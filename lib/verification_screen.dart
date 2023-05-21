import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slatpro/registration_screen.dart';
import 'package:slatpro/vider_login_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add your navigation logic here
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViderLoginScreen()),
            );
            },
          ),
      ),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Verification',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8.0),
      Text('Enter the 4 digit code sent to your mobile number'),
      SizedBox(height: 16.0),
      Padding(
  padding: EdgeInsets.symmetric(horizontal: 32.0),
  child: TextField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: 'Enter OTP',
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 10.0), // Adjust the values as needed
    ),
  ),
),
SizedBox(height: 20),
            Container(
              width: 350,
              height: 60,
              child: ElevatedButton(
              onPressed: () {
                // Perform button action here
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistrationScreen()),
            );
              },
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0D47A1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Set desired border radius
                  ), // Set button background color
              ),
            ),
            ),
              SizedBox(height: 20),
                Center(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Din’t receive the OTP?'),
                    Text(' Resend',
                    style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0D47A1),
        ),
        ),
                  ],
                ),
                ),
                SizedBox(height: 200),
    ],
  ),
  
),
    );
  }
}