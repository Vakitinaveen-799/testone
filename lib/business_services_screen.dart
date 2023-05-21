import 'package:flutter/material.dart';
import 'package:slatpro/business_registration_screen.dart';
import 'hello_user_screen.dart';

class BusinessServicesScreen extends StatefulWidget {
  const BusinessServicesScreen({Key? key}) : super(key: key);

  @override
  State<BusinessServicesScreen> createState() => _BusinessServicesScreenState();
}

class _BusinessServicesScreenState extends State<BusinessServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelloUserScreen()),
            );
          },
        ),
        title: Text('Business Services'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for a service',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MySlider()),
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
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod velit in mi sagittis, vel rhoncus metus bibendum. Vivamus ut metus nisi.',
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
                          'Service name',
                          style: TextStyle(
                            color: Color(0xFF0D47A1),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod velit in mi sagittis, vel rhoncus metus bibendum. Vivamus ut metus nisi.',
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
                          'INR 999',
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
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                          'Service name',
                          style: TextStyle(
                            color: Color(0xFF0D47A1),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod velit in mi sagittis, vel rhoncus metus bibendum. Vivamus ut metus nisi.',
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
                          'INR 699/Month',
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
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod velit in mi sagittis, vel rhoncus metus bibendum. Vivamus ut metus nisi.',
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
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                          'Service name',
                          style: TextStyle(
                            color: Color(0xFF0D47A1),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod velit in mi sagittis, vel rhoncus metus bibendum. Vivamus ut metus nisi.',
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
                          'INR 2099',
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
              ),
            ),
            SizedBox(height: 25.0),
          ],
        ),
      ),   
    );
  }
}
