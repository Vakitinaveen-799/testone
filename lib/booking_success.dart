import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'vider_login_screen.dart';

class BookingSuccess extends StatefulWidget {
  const BookingSuccess({super.key});

  @override
  State<BookingSuccess> createState() => _BookingSuccessState();
}

class _BookingSuccessState extends State<BookingSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/bookingsuccessimage.jpeg', // Replace with your own image path
              width: 1000,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Booking Successful',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D47A1),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'An Expert will be assigned to you shortly.You can \ntrack your service from the dashboard',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            
            
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
              onPressed: () {
                // Perform button action here
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViderLoginScreen()),
            );
              },
              child: Text('Book a service'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0D47A1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Set desired border radius
                  ), // Set button background color
              ),
            ),
            ),
            SizedBox(height: 80),
          ],
        ),
        
      ),
    );
  }
}