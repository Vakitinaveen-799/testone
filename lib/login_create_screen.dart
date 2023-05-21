import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slatpro/your_dashboard_bookservice_screen.dart';

class LoginCreateScreen extends StatefulWidget {
  const LoginCreateScreen({super.key});

  @override
  State<LoginCreateScreen> createState() => _LoginCreateScreenState();
}

class _LoginCreateScreenState extends State<LoginCreateScreen> {
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
        backgroundColor: Colors.white,
  leading: IconButton(
    icon: Icon(Icons.menu,
    color: Color(0xFF0D47A1),),
    onPressed: () {
      // Handle menu button press
    },
  ),
  
  actions: [
    IconButton(
      icon: Icon(Icons.help_outline, size: 20,
      color: Color(0xFF0D47A1),),
      onPressed: () {
        // Handle notifications button press
      },
    ),
  ],
),
body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logincreateimage.jpeg', // Replace with your own image path
              width: 900,
              height: 200,
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
              MaterialPageRoute(builder: (context) => YourDashboardBookServiceScreen()),
            );
              },
              child: Text('Login/Create an account'),
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