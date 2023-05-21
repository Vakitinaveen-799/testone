import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slatpro/verification_screen.dart';

import 'menu_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  get selectedRadio => null;

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
              MaterialPageRoute(builder: (context) => VerificationScreen()),
            );
            },
          ),
      ),
      body: SingleChildScrollView(
        child: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 12.0),
      Text(
        'Registration',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8.0),
      Text('Enter few details to register a new account'),
      SizedBox(height: 16.0),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 10.0), // Adjust the values as needed
          ),
        ),
      ),
      SizedBox(height: 16.0),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'E-mail ID',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 10.0), // Adjust the values as needed
          ),
        ),
      ),
      SizedBox(height: 16.0),
      Padding(
  padding: EdgeInsets.symmetric(horizontal: 30.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        'Documents for user',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
      SizedBox(height: 12.0),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.0),
        child: Row(
          children: [
            Radio(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (value) {},
            ),
            Text('Individual'),
            SizedBox(width: 16.0),
            Radio(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (value) {},
            ),
            Text('Business'),
          ],
        ),
      ),
      SizedBox(height: 16.0),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Business name',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 10.0), // Adjust the values as needed
          ),
        ),
      ),
      SizedBox(height: 16.0),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Address',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 10.0), // Adjust the values as needed
          ),
        ),
      ),
      SizedBox(height: 16.0),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'PAN Number',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 10.0), // Adjust the values as needed
          ),
        ),
      ),
      SizedBox(height: 16.0),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'GSTIN Number',
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
              MaterialPageRoute(builder: (context) => MenuScreen()),
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
    ],
  ),
),
      ),

    );
  }
}