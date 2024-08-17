// import 'package:auto_farm_hub/User_authentication/authentication_by_phone_no.dart';
// import 'package:auto_farm_hub/farmer_register.dart';
// import 'package:auto_farm_hub/farmerdashboard.dart';
// import 'package:auto_farm_hub/mechanicmodule/mechanic_registration.dart';
import 'package:flutter/material.dart';

class HomeLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farm Hub',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FARM HUB'),
        backgroundColor: Color.fromARGB(255, 93, 250, 103),
      ),
      body: Text(
        'We need to register your phone before getting started',
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );

    //           SizedBox(
    //             height: 5,
    //           ),
    //           Container(
    //             //   padding: EdgeInsets.only(left: 55),
    //             alignment: Alignment.center,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: <Widget>[
    //                 Text(
    //                   'WELCOME',
    //                   style: TextStyle(
    //                     fontSize: 40, // Adjust font size as needed
    //                   ),
    //                 ),
    //                 // SizedBox(
    //                 //   height: 10,
    //                 // ),
    //                 Text(
    //                   'Let\'s get started',
    //                   style: TextStyle(
    //                     fontSize: 20, // Adjust font size as needed
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 50,
    //           ),
    //           Container(
    //             padding: EdgeInsets.only(left: 55),
    //             alignment: Alignment.centerLeft,
    //             child: Text(
    //               'Register as:',
    //               style: TextStyle(
    //                   fontSize: 29, // Adjust font size as needed
    //                   color:
    //                       Color.fromRGBO(67, 158, 59, 0.927) // Set the text color
    //                   ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 40.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: <Widget>[
    //                 Expanded(
    //                   child: Container(
    //                     width: 115,
    //                     padding: EdgeInsets.all(8.0),
    //                     decoration: BoxDecoration(
    //                       color: Color.fromARGB(255, 255, 246, 191),
    //                       borderRadius: BorderRadius.circular(10.0),
    //                       boxShadow: [
    //                         BoxShadow(
    //                           color: Colors.grey.withOpacity(0.5),
    //                           spreadRadius: 2,
    //                           blurRadius: 5,
    //                           offset: Offset(0, 2), // changes position of shadow
    //                         ),
    //                       ],
    //                     ),
    //                     child: Column(
    //                       mainAxisSize: MainAxisSize.min,
    //                       children: <Widget>[
    //                         Container(
    //                           width: 95,
    //                           height: 100,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(10.0),
    //                             boxShadow: [
    //                               BoxShadow(
    //                                 color: Colors.grey.withOpacity(0.5),
    //                                 spreadRadius: 2,
    //                                 blurRadius: 5,
    //                                 offset: Offset(
    //                                     0, 2), // changes position of shadow
    //                               ),
    //                             ],
    //                           ),
    //                           child: ClipRRect(
    //                             borderRadius: BorderRadius.circular(10.0),
    //                             child: Image.asset(
    //                               'assets/farmerlogo.jpeg',
    //                               width: 95,
    //                               height: 100,
    //                               fit: BoxFit.cover,
    //                             ),
    //                           ),
    //                         ),

    //                         SizedBox(
    //                             height:
    //                                 8), // Add spacing between the image and the button
    //                         ElevatedButton(
    //                           onPressed: () {
    //                             // Add your onPressed logic here
    //                             Navigator.push(
    //                               context,
    //                               MaterialPageRoute(
    //                                   builder: (context) => RegistrationScreen()),
    //                             );
    //                           },
    //                           style: ElevatedButton.styleFrom(
    //                             backgroundColor: Color.fromRGBO(67, 158, 59, 1),
    //                           ),
    //                           child: Text(
    //                             'Farmer',
    //                             style:
    //                                 TextStyle(fontSize: 20, color: Colors.white),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(width: 20),
    //                 Expanded(
    //                   child: Container(
    //                     width: 115,
    //                     padding: EdgeInsets.all(8.0),
    //                     decoration: BoxDecoration(
    //                       color: Color.fromARGB(255, 255, 246, 191),
    //                       borderRadius: BorderRadius.circular(10.0),
    //                       boxShadow: [
    //                         BoxShadow(
    //                           color: Colors.grey.withOpacity(0.5),
    //                           spreadRadius: 2,
    //                           blurRadius: 5,
    //                           offset: Offset(0, 2), // changes position of shadow
    //                         ),
    //                       ],
    //                     ),
    //                     child: Column(
    //                       mainAxisSize: MainAxisSize.min,
    //                       children: <Widget>[
    //                         Container(
    //                           width: 95,
    //                           height: 100,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(10.0),
    //                             boxShadow: [
    //                               BoxShadow(
    //                                 color: Colors.grey.withOpacity(0.5),
    //                                 spreadRadius: 2,
    //                                 blurRadius: 5,
    //                                 offset: Offset(
    //                                     0, 2), // changes position of shadow
    //                               ),
    //                             ],
    //                           ),
    //                           child: ClipRRect(
    //                             borderRadius: BorderRadius.circular(10.0),
    //                             child: Image.asset(
    //                               'assets/mechanic logo.jpeg',
    //                               width: 95,
    //                               height: 100,
    //                               fit: BoxFit.cover,
    //                             ),
    //                           ),
    //                         ),

    //                         SizedBox(
    //                             height:
    //                                 8), // Add spacing between the image and the button
    //                         ElevatedButton(
    //                           onPressed: () {
    //                             // Add your onPressed logic here
    //                             Navigator.push(
    //                               context,
    //                               MaterialPageRoute(
    //                                   builder: (context) =>
    //                                       MechanicRegistrationScreen()),
    //                             );
    //                           },
    //                           style: ElevatedButton.styleFrom(
    //                             backgroundColor: Color.fromRGBO(67, 158, 59, 1),
    //                           ),
    //                           child: Text(
    //                             'Mechanic',
    //                             style:
    //                                 TextStyle(fontSize: 20, color: Colors.white),
    //                             overflow: TextOverflow.ellipsis,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           //    Expanded(
    //           //child:
    //           Container(
    //             width: 145,
    //             padding: EdgeInsets.all(8.0),
    //             decoration: BoxDecoration(
    //               color: Color.fromARGB(255, 255, 246, 191),
    //               borderRadius: BorderRadius.circular(10.0),
    //               boxShadow: [
    //                 BoxShadow(
    //                   color: Colors.grey.withOpacity(0.5),
    //                   spreadRadius: 2,
    //                   blurRadius: 5,
    //                   offset: Offset(0, 2), // changes position of shadow
    //                 ),
    //               ],
    //             ),
    //             child: Column(
    //               mainAxisSize: MainAxisSize.min,
    //               children: <Widget>[
    //                 Container(
    //                   width: 95,
    //                   height: 100,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(10.0),
    //                     boxShadow: [
    //                       BoxShadow(
    //                         color: Colors.grey.withOpacity(0.5),
    //                         spreadRadius: 2,
    //                         blurRadius: 5,
    //                         offset: Offset(0, 2), // changes position of shadow
    //                       ),
    //                     ],
    //                   ),
    //                   child: ClipRRect(
    //                     borderRadius: BorderRadius.circular(10.0),
    //                     child: Image.asset(
    //                       'assets/buyerlogo.jpeg',
    //                       width: 95,
    //                       height: 100,
    //                       fit: BoxFit.cover,
    //                     ),
    //                   ),
    //                 ),

    //                 SizedBox(
    //                     height:
    //                         8), // Add spacing between the image and the button
    //                 ElevatedButton(
    //                   onPressed: () {
    //                     // Add your onPressed logic here
    //                     Navigator.push(
    //                       context,
    //                       MaterialPageRoute(builder: (context) => MyPhone()),
    //                     );
    //                   },
    //                   style: ElevatedButton.styleFrom(
    //                     backgroundColor: Color.fromRGBO(67, 158, 59, 1),
    //                   ),
    //                   child: Text(
    //                     'Buyer',
    //                     style: TextStyle(fontSize: 20, color: Colors.white),
    //                     overflow: TextOverflow.ellipsis,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           //   ),
  }
}
