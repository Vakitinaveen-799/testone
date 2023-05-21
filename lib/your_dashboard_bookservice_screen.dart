import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slatpro/past_services_screen.dart';
import 'package:slatpro/razorpay_screen.dart';

class YourDashboardBookServiceScreen extends StatefulWidget {
  const YourDashboardBookServiceScreen({super.key});

  @override
  State<YourDashboardBookServiceScreen> createState() => _YourDashboardBookServiceScreenState();
}

class _YourDashboardBookServiceScreenState extends State<YourDashboardBookServiceScreen> {
  int _selectedIndex = 0; 
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/yourdashboardimage.jpeg', // Replace with your own image path
              width: 1000,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Your Dashboard',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D47A1),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Find all the requested services here. You haven’t \nbooked any service yet.',
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
              MaterialPageRoute(builder: (context) => PastServicesScreen()),
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

            SizedBox(height: 20),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
              onPressed: () {
                // Perform button action here
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RazorpayScreen()),
            );
              },
              child: Text('Razorpay Payment Gateway'),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFF64B5F6),
        Color(0xFF0D47A1),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: FloatingActionButton(
    onPressed: () {
      // Add your onPressed code here!
    },
    child: Icon(Icons.menu),
    elevation: 0.0,
    backgroundColor: Colors.transparent,
  ),
),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}