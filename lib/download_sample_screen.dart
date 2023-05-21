import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:dotted_border/dotted_border.dart';

import 'login_create_screen.dart';


class DownloadSampleScreen extends StatefulWidget {
  const DownloadSampleScreen({super.key});

  @override
  State<DownloadSampleScreen> createState() => _DownloadSampleScreenState();
}

class _DownloadSampleScreenState extends State<DownloadSampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Business registration'),
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
              MaterialPageRoute(builder: (context) => DownloadSampleScreen()),
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
        Row(
          children: [
            Container(
              width: 50.0,
              height: 70.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/cristiano.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CA Expert name',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'ID / Designation / Other detail',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
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
            ////////////////////////////////////
            SizedBox(height: 16.0),
            Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Text(
            "Documents to be uploaded",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  ],
),
              Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DownloadSampleScreen()),
            );
          
        },
        child: Container(
  width: 400.0, // Set the desired width
  height: 150.0, // Set the desired height
  child: DottedBorder(
    borderType: BorderType.RRect,
    dashPattern: [5, 5],
    strokeWidth: 2.0,
    color: Colors.grey,
    radius: Radius.circular(10.0),
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
      Icon(
        Icons.upload,
        color: Colors.grey[600],
      ),
      SizedBox(width: 8.0), // Add desired spacing between the icon and text
      Text(
        'Tap to upload',
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
              
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    ElevatedButton(
  onPressed: () {
    // Add your onPressed logic here
  },
  style: ElevatedButton.styleFrom(
    primary: const Color(0xFF0D47A1), // Set the background color
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Set the border radius
    ),
    minimumSize: Size(200.0, 50.0), // Set the desired width and height
  ),
  child: Row(
    children: [
      Icon(
        Icons.download,
        color: Colors.white,
      ),
      SizedBox(width: 8.0), // Add desired spacing between the icon and text
      Text(
        'Download sample',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  ),
),


                  ],
                ),)
              ],
            ),
            SizedBox(height: 16.0),
          
              Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DownloadSampleScreen()),
            );
          
        },
        child: Container(
  width: 400.0, // Set the desired width
  height: 150.0, // Set the desired height
  child: DottedBorder(
    borderType: BorderType.RRect,
    dashPattern: [5, 5],
    strokeWidth: 2.0,
    color: Colors.grey,
    radius: Radius.circular(10.0),
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
      Icon(
        Icons.upload,
        color: Colors.grey[600],
      ),
      SizedBox(width: 8.0), // Add desired spacing between the icon and text
      Text(
        'Tap to upload',
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
              
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    ElevatedButton(
  onPressed: () {
    // Add your onPressed logic here
  },
  style: ElevatedButton.styleFrom(
    primary: const Color(0xFF0D47A1), // Set the background color
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Set the border radius
    ),
    minimumSize: Size(200.0, 50.0), // Set the desired width and height
  ),
  child: Row(
    children: [
      Icon(
        Icons.download,
        color: Colors.white,
      ),
      SizedBox(width: 8.0), // Add desired spacing between the icon and text
      Text(
        'Download sample',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  ),
),


                  ],
                ),)
              ],
            ),
            SizedBox(height: 16.0),
          
              Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DownloadSampleScreen()),
            );
          
        },
        child: Container(
  width: 400.0, // Set the desired width
  height: 150.0, // Set the desired height
  child: DottedBorder(
    borderType: BorderType.RRect,
    dashPattern: [5, 5],
    strokeWidth: 2.0,
    color: Colors.grey,
    radius: Radius.circular(10.0),
    child: Padding(
      padding: EdgeInsets.all(8.0), // Add desired padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 38.0),
          Align(
            alignment: Alignment.centerLeft,
            
            child: Text(
              'Scanned copy of PAN Card or Passport (Foreign Nationals & NRIs)',
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
      Icon(
        Icons.upload,
        color: Colors.grey[600],
      ),
      SizedBox(width: 8.0), // Add desired spacing between the icon and text
      Text(
        'Tap to upload',
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
              
            ),
            SizedBox(height: 16.0),
          
              Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DownloadSampleScreen()),
            );
          
        },
        child: Container(
  width: 400.0, // Set the desired width
  height: 150.0, // Set the desired height
  child: DottedBorder(
    borderType: BorderType.RRect,
    dashPattern: [5, 5],
    strokeWidth: 2.0,
    color: Colors.grey,
    radius: Radius.circular(10.0),
    child: Padding(
      padding: EdgeInsets.all(8.0), // Add desired padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 38.0),
          Align(
            alignment: Alignment.centerLeft,
            
            child: Text(
              'Scanned copy of Voter’s ID/Passport/ Driver’s License',
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
      Icon(
        Icons.upload,
        color: Colors.grey[600],
      ),
      SizedBox(width: 8.0), // Add desired spacing between the icon and text
      Text(
        'Tap to upload',
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
              
            ),
            SizedBox(height: 16.0),
            
              Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DownloadSampleScreen()),
            );
          
        },
        child: Container(
  width: 400.0, // Set the desired width
  height: 150.0, // Set the desired height
  child: DottedBorder(
    borderType: BorderType.RRect,
    dashPattern: [5, 5],
    strokeWidth: 2.0,
    color: Colors.grey,
    radius: Radius.circular(10.0),
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
      Icon(
        Icons.upload,
        color: Colors.grey[600],
      ),
      SizedBox(width: 8.0), // Add desired spacing between the icon and text
      Text(
        'Tap to upload',
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
              
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    ElevatedButton(
  onPressed: () {
    // Add your onPressed logic here
  },
  style: ElevatedButton.styleFrom(
    primary: const Color(0xFF0D47A1), // Set the background color
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Set the border radius
    ),
    minimumSize: Size(200.0, 50.0), // Set the desired width and height
  ),
  child: Row(
    children: [
      Icon(
        Icons.download,
        color: Colors.white,
      ),
      SizedBox(width: 8.0), // Add desired spacing between the icon and text
      Text(
        'Download sample',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  ),
), ],
                ),)
              ],
            ), 
            SizedBox(height: 50.0),         
    ],  
  ),
  
  
  
),
floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginCreateScreen()),
            );
        // Add your FAB onPressed logic here
      },
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF64B5F6),
                    Color(0xFF0D47A1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
                
              ),
              
            ),
            Icon(Icons.chat),
          ],
        ),
      ),
      
    ),


 
    );
  }
}