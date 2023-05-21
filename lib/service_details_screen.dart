import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'booking_success.dart';

class ServiceDetailsScreen extends StatefulWidget {
  const ServiceDetailsScreen({super.key});

  @override
  State<ServiceDetailsScreen> createState() => _ServiceDetailsScreenState();
}

class _ServiceDetailsScreenState extends State<ServiceDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Service details'),
      Text(
        'Completed',
        style: TextStyle(
          color: Color(0xFF8BC34A),
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
body: SingleChildScrollView(
  child: Column(
    children: [    
      SizedBox(height: 16.0),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingSuccess()),
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
      ),
      SizedBox(height: 16.0),
      Padding(
  padding: EdgeInsets.symmetric(horizontal: 22.0),
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
SizedBox(height: 16.0),
Padding(padding: EdgeInsets.symmetric(horizontal: 22.0),
child: Column(
  children: [
    Container(
  height: 60.0, // Specify the desired height
  child: ElevatedButton(
    onPressed: () {
      // Add your logic here for button press
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.blue, // Customize the button color
      onPrimary: Colors.white, 
      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),// Customize the text color
    ),
    child: Row(
      children: [
        Icon(Icons.picture_as_pdf),
        SizedBox(width: 8.0),
        Text('Registration certificate.pdf'),
        Spacer(),
        Icon(Icons.download),
      ],
    ),
  ),
),
SizedBox(height: 16.0),
Container(
  height: 60.0, // Specify the desired height
  child: ElevatedButton(
    onPressed: () {
      // Add your logic here for button press
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.blue, // Customize the button color
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ), // Customize the text color
    ),
    child: Row(
      children: [
        Icon(Icons.picture_as_pdf),
        SizedBox(width: 8.0),
        Text('Attachment name.pdf'),
        Spacer(),
        Icon(Icons.download),
      ],
    ),
  ),
),
SizedBox(height: 16.0),
Row(
  children: [
    Expanded(
  child: Container(
    height: 50.0,
    child: ElevatedButton(
    onPressed: () {
      // Add your logic for the button
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.blue, // Customize the button color
      onPrimary: Colors.white, 
      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ), // Customize the text color
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.download),
        SizedBox(width: 8.0),
        Text('Download all'),
      ],
    ),
  ),
  )
),

    SizedBox(width: 16.0), // Add spacing between the buttons
    Expanded(
      child: Container(
        height: 50.0,
        child: ElevatedButton(
  onPressed: () {
    // Add your logic for the button
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.blue, // Customize the button color
    onPrimary: Colors.white,
    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),  // Customize the text color
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.drive_folder_upload), // Replace with the Google Drive icon
      SizedBox(width: 8.0),
      Text('Save to Drive'),
    ],
  ),
),
      ),
    ),
  ],
),
SizedBox(height: 16.0),
      Padding(
  padding: EdgeInsets.symmetric(horizontal: 6.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        'Requested documents from CA expert',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
SizedBox(height: 16.0),
Center(
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 6.0),
    child: GestureDetector(
      onTap: () {
        // Add your logic for the container
      },
      child: Container(
        width: 400.0, // Set the desired width
        height: 150.0, // Set the desired height
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0), // Add desired padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 38.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'E- Form 132',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 8.0), // Add desired spacing between the icon and text
                    Text(
                      'E-Form 132.pdf',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
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
),
SizedBox(height: 16.0),
Center(
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 6.0),
    child: GestureDetector(
      onTap: () {
        // Add your logic for the container
      },
      child: Container(
        width: 400.0, // Set the desired width
        height: 150.0, // Set the desired height
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0), // Add desired padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 38.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Form name',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 8.0), // Add desired spacing between the icon and text
                    Text(
                      'Form name.pdf',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
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
),
SizedBox(height: 16.0),
Center(
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 6.0),
    child: GestureDetector(
      onTap: () {
        // Add your logic for the container
      },
      child: Container(
        width: 400.0, // Set the desired width
        height: 150.0, // Set the desired height
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0), // Add desired padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 38.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Scanned copy of PAN Card or Passport \n(Foreign Nationals & NRIs)',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 8.0), // Add desired spacing between the icon and text
                    Text(
                      'passport.pdf',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
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
),
SizedBox(height: 16.0),
Center(
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 6.0),
    child: GestureDetector(
      onTap: () {
        // Add your logic for the container
      },
      child: Container(
        width: 400.0, // Set the desired width
        height: 150.0, // Set the desired height
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0), // Add desired padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 38.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Scanned copy of Voter’s ID/Passport/ \nDriver’s License',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 8.0), // Add desired spacing between the icon and text
                    Text(
                      'DL.pdf',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
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
),
SizedBox(height: 16.0),
Center(
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 6.0),
    child: GestureDetector(
      onTap: () {
        // Add your logic for the container
      },
      child: Container(
        width: 400.0, // Set the desired width
        height: 150.0, // Set the desired height
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0), // Add desired padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 38.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Form A-14',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 8.0), // Add desired spacing between the icon and text
                    Text(
                      'Form a-14(1).pdf',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
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
),
SizedBox(height: 24.0),
  ],
),
),

    ],
  ),
),

    );
  }
}