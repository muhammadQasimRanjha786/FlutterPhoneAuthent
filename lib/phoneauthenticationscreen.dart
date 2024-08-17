import 'package:appuserlogin/Otpcheckscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyPhone extends StatefulWidget {
  MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  var auth = FirebaseAuth.instance;
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image code here
                // CircleAvatar(
                //   radius: 60,
                //   backgroundImage: AssetImage(
                //       'assets/projectlogo.jpg'), // Replace with your image asset
                // ),
                // // Widget for phone verification
                Text(
                  'Phone Verification',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                // Text widget for information
                Text(
                  'We need to register your phone before getting started',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                // Container widget including a row in which we have two input fields
                Container(
                  margin: EdgeInsets.all(25.0),
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Fixed Country Code
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          '+92',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      // Mobile Number Field
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            labelText: 'Phone Number',
                            hintText: 'Enter mobile number',
                          ),
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            // FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(13),
                            TextInputFormatter.withFunction(
                                (oldValue, newValue) {
                              if (newValue.text.isNotEmpty) {
                                if (int.tryParse(
                                        newValue.text.substring(0, 1)) ==
                                    0) {
                                  // Prevent entering a zero as the first digit
                                  return oldValue;
                                }
                              }
                              return newValue;
                            }),
                          ],
                          validator: (value) {
                            if (value!.isEmpty || value.length < 13) {
                              return 'Please enter a valid mobile number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // Button widget for OTP
                Container(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      auth.verifyPhoneNumber(
                        phoneNumber: phoneController.text.toString(),
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          if (_formKey.currentState!.validate()) {
                            // Navigate to the second screen when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Myotp(
                                        verificationId: verificationId,
                                      )),
                            );
                          } else {
                            // Display a Snackbar with an error message
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('Please enter a valid mobile number'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                    child: Text(
                      'Send OTP',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
