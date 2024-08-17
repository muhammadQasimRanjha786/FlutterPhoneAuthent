import 'package:appuserlogin/homelogin.dart';
import 'package:appuserlogin/phoneauthenticationscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Myotp extends StatefulWidget {
  final String verificationId;
  const Myotp({
    super.key,
    required this.verificationId,
  });

  @override
  State<Myotp> createState() => _MyotpState();
}

class _MyotpState extends State<Myotp> {
  var auth = FirebaseAuth.instance;
  final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image code here
              // CircleAvatar(
              //   radius: 60,
              //   backgroundImage: AssetImage(
              //       'assets/projectlogo.jpg'), // Replace with your image asset
              // ), //widget for phone verification
              Text(
                'Phone Verification',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              //text widget for information
              Text(
                'We need to register your phone before getting started',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              //pinput is here
              Pinput(
                length: 6,
                controller: otpController,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              ),

              SizedBox(
                height: 15,
              ),
              //container widget including a row in which we have two input
              Container(
                width: 225,
                child: ElevatedButton(
                    onPressed: () async {
                      final credential = PhoneAuthProvider.credential(
                          verificationId: widget.verificationId,
                          smsCode: otpController.text.toString());

                      try {
                        await auth.signInWithCredential(credential);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeLogin()),
                        );
                      } catch (e) {}
                    },
                    child: Text(
                      'Verify Phone Number',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade600)),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPhone()),
                    ); // Button action
                  },
                  child: Text(
                    'Edit phone number',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
