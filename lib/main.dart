import 'package:appuserlogin/firebase_options.dart';
import 'package:appuserlogin/homelogin.dart';
import 'package:appuserlogin/phoneauthenticationscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farmer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: auth.currentUser != null
          ? HomeLogin()
          : AnimatedSplash(
              type: Transition.slide,
              child: Text(
                'Phone Verification',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              curve: Curves.fastLinearToSlowEaseIn,
              backgroundColor: Colors.white,
              navigator: MyPhone(),
              durationInSeconds: 3,
            ),
    );
  }
}
