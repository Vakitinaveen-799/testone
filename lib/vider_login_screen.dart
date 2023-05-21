import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slatpro/verification_screen.dart';

class ViderLoginScreen extends StatefulWidget {
  const ViderLoginScreen({super.key});

  @override
  State<ViderLoginScreen> createState() => _ViderLoginScreenState();
}

class _ViderLoginScreenState extends State<ViderLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/viderloginlogo.jpeg', // Replace with your logo image path
        width: 150.0,
        height: 150.0,
      ),
      SizedBox(height: 3.0),
      Text(
        'Nick',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 16.0),
      Text(
        'Login',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8.0),
      Text('Enter your mobile number to proceed'),
      SizedBox(height: 16.0),
      Padding(
  padding: EdgeInsets.symmetric(horizontal: 32.0),
  child: TextField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: 'Mobile number',
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
              MaterialPageRoute(builder: (context) => VerificationScreen()),
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
            SizedBox(height: 300),

    ],
  ),
),

    );
  }
}
