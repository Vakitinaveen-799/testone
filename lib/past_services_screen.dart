import 'package:flutter/material.dart';

import 'dashboard_ongoing_secondscreen.dart';

class PastServicesScreen extends StatefulWidget {
  const PastServicesScreen({Key? key}) : super(key: key);

  @override
  State<PastServicesScreen> createState() => _PastServicesScreenState();
}

class _PastServicesScreenState extends State<PastServicesScreen> {
  int _selectedIndex = 0; 
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  String selectedMonth = 'Nov';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFF0D47A1),
          ),
          onPressed: () {
            // Handle menu button press
          },
        ),
        title: Text(
          'Marshall Mathers',
          style: TextStyle(
            color: Colors.black, // Set the desired color for the title
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.help_outline,
              size: 20,
              color: Color(0xFF0D47A1),
            ),
            onPressed: () {
              // Handle notifications button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Past services',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: DropdownButton<String>(
                  value: selectedMonth,
                  onChanged: (String? newValue) {
                    // Handle dropdown value change
                    if (newValue != null) {
                      setState(() {
                        selectedMonth = newValue;
                      });
                    }
                  },
                  items: months.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
      ),
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 16.0), 
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => DashboardOngoingSecondSreen()),
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
                            color: Color(0xFF0D47A1),
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
                          'INR 699',
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
                      color: Color(0xFF0D47A1),
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
                    'INR 699',
                    style: TextStyle(
                      color: Color(0xFF64B5F6),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
            color: Color(0xFF0D47A1),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'INR 1599/Month',
              style: TextStyle(
                color: Color(0xFF64B5F6),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '12 months',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
                  onTap: () {
             //         Navigator.push(
             //  context,
            //  MaterialPageRoute(builder: (context) => ()),
           // );
          
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
                          'TDS Returns',
                          style: TextStyle(
                            color: Color(0xFF0D47A1),
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
                          'INR 699',
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
                  onTap: () {
             //         Navigator.push(
             //  context,
            //  MaterialPageRoute(builder: (context) => ()),
           // );
          
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
            color: Color(0xFF0D47A1),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'INR 1599/Month',
              style: TextStyle(
                color: Color(0xFF64B5F6),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '12 months',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),

                )
              ),
            ),
            SizedBox(height: 24.0),
            
          ],
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
