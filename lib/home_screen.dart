import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'hello_user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; 
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Added spacing between elements
  children: [
    SizedBox(
      height: 100, // Decreased height
      width: 120,
      child: Image.asset('assets/appbarviderlogo1.png'),
    ),
    TextButton(onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HelloUserScreen()),
    );
    }, child: Text('Skip',
    style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).primaryColor,
          ),)),// Moved the text widget to the end
  ],
),


    const SizedBox(height: 3), // Decreased height
    Text(
      'Are you looking for any of these \npopular services?',
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        fontSize: 14,
        color: Color(0xFF222222),
        fontWeight: FontWeight.w900,
      ),
    ),
    SizedBox(height: 20.0),
    Padding(
  padding: const EdgeInsets.symmetric(vertical: 8.0),
  child: SizedBox(
    height: 70,
    width: 600,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 10),
          Text(
            'Business registration',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  ),
),

    Padding(
  padding: const EdgeInsets.symmetric(vertical: 8.0),
  child: SizedBox(
    height: 70,
    width: 600,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.email),
          ),
          const SizedBox(width: 10),
          Text(
            'GST Filing',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  ),
),
Padding(
  padding: const EdgeInsets.symmetric(vertical: 8.0),
  child: SizedBox(
    height: 70,
    width: 600,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 10),
          Text(
            'Legal Agreements',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  ),
),
Padding(
  padding: const EdgeInsets.symmetric(vertical: 8.0),
  child: SizedBox(
    height: 70,
    width: 600,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 10),
          Text(
            'Law Notices',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  ),
),
SizedBox(height: 30.0),
Center(
  child: SizedBox(
    height: 200.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      color: Color(0xFF0D47A1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Don't know where to start?",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 10.0),
              Text(
                "We will take care of the services based on your requirements",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                width: 320.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Get in touch',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF64B5F6),
                    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
),


  ], 
),

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