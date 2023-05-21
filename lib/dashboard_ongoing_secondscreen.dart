import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slatpro/service_details_screen.dart';
import 'package:slatpro/testtt.dart';

class DashboardOngoingSecondSreen extends StatefulWidget {
  const DashboardOngoingSecondSreen({super.key});

  @override
  State<DashboardOngoingSecondSreen> createState() => _DashboardOngoingSecondSreenState();
}

class _DashboardOngoingSecondSreenState extends State<DashboardOngoingSecondSreen> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 16.0),
            child: Text('Ongoing services'),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetailsScreen()),
            );
          
        },
        child: Card(
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Business Registration',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Service booked on 14 nov, 2020',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFF222222),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Booking confirmed',
                          style: TextStyle(
                            color: Color(0xFF64B5F6),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                ),
                )
              ),
            ),
            SizedBox(height: 16.0),
            
Center(
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TDS Returns',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Service booked on 14 Nov, 2020',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF222222),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'In process',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 16.0,
              right: 16.0,
              child: Icon(
                Icons.notifications_active,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    ),
  ),
),

            SizedBox(height: 16.0),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
         
          
        },
        child: Card(
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GST Returns',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Service booked on 14 nov, 2020',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFF222222),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'In process',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                ),
                )
              ),
            ),
            
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