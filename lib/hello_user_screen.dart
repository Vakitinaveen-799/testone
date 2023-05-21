import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slatpro/business_services_screen.dart';


class HelloUserScreen extends StatefulWidget {
  const HelloUserScreen({super.key});
  
  

  
  @override
  State<HelloUserScreen> createState() => _HelloUserScreenState();
}

class _HelloUserScreenState extends State<HelloUserScreen> {
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
  title: Image.asset(
    'assets/appbarviderlogo1.png',
    height: 100,
    width: 100,
  ),
  centerTitle: true,
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
    body: SingleChildScrollView(
      child: Container(
  padding: EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Hello User,',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Text(
        'Search or Select a required service',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
      SizedBox(height: 16),
      TextField(
        decoration: InputDecoration(
          hintText: 'Search for a Service / Category',
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      SizedBox(height: 16),
      Center(
  child: SizedBox(
    height: 200.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0D47A1), Color(0xFF64B5F6)],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Book your 1st Service for free",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
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
                    'Book a Service',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0),
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
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        "Popular Services",
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 32.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 36.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Business \nregistration",
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 32.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.car_repair,
                  color: Colors.white,
                  size: 36.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "GST \nFiling",
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 32.0,
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.local_mall,
                  color: Colors.white,
                  size: 36.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Legal \nAgreements",
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 32.0,
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.music_note,
                  color: Colors.white,
                  size: 36.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Law \nNotices",
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ],
      ),
    ),
  ],
),
SizedBox(height: 16),
Center(
  child: SizedBox(
    height: 100.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BusinessServicesScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF0D47A1), Color(0xFF64B5F6)],
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Business Services',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Check out our latest book recommendations \nand find your next great read.',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ),
),

SizedBox(height: 16),
Center(
  child: SizedBox(
    height: 100.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0D47A1), Color(0xFF64B5F6)],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'GST Compliance',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Check out our latest book recommendations \nand find your next great read.',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      
          ),
        ),
      ),
    ),
  ),
SizedBox(height: 16),
Center(
  child: SizedBox(
    height: 100.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0D47A1), Color(0xFF64B5F6)],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Tax & Compliance',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Check out our latest book recommendations \nand find your next great read.',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      
          ),
        ),
      ),
    ),
  ),
SizedBox(height: 16),
Center(
  child: SizedBox(
    height: 100.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0D47A1), Color(0xFF64B5F6)],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Property Services',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Check out our latest book recommendations \nand find your next great read.',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      
          ),
        ),
      ),
    ),
  ),
SizedBox(height: 16),
Center(
  child: SizedBox(
    height: 100.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0D47A1), Color(0xFF64B5F6)],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'NGO Services',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Check out our latest book recommendations \nand find your next great read.',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      
          ),
        ),
      ),
    ),
  ),
SizedBox(height: 16),
Center(
  child: SizedBox(
    height: 100.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0D47A1), Color(0xFF64B5F6)],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Trademark & Licenses',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Check out our latest book recommendations \nand find your next great read.',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      
          ),
        ),
      ),
    ),
  ),
SizedBox(height: 16),
      Center(
  child: SizedBox(
    height: 200.0,
    width: 400.0,
    child: Card(
      elevation: 6.0,
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF0D47A1),
          
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Don’t know where to start?",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "We will take care of the services based on \nyour requirements",
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
                    'Chat with us',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF64B5F6),
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0),
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
    )

    );
  }
}



