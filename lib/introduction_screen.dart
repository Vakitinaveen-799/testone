import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui';
import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final double appBarHeight = 80;

  ///Changed a little bit of buttons styling and text for the thumbnail lol
  ///Thanks for coming here :-)

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Hassle free Booking',
      body: 'Vider brings you an easy process to book your CA Services through user friendly mobile app,',
      
      image: Center(
        child: Image.asset('assets/slider1.jpeg',
         width: 1200,
          height: 1200,
          ),
        
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          color: Color(0xFF0D47A1),
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        )
        
      )
    ),
    PageViewModel(
        title: 'Easy Document uploads',
        body: 'On bookings the service.All the required documents can be easily uploaded for the CA to verify.',
        
        image: Center(
          child: Image.asset('assets/slider2.jpeg',
           width: 1200,
          height: 1200,
          ),
        
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: Color(0xFF0D47A1),
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: '24x7 Chat Support',
        body: 'Our Experts will be in touch with you through out the process for a hassle free completion',
        
        image: Center(
          child: Image.asset('assets/slider3.jpeg',
          width: 1200,
          height: 1200,
          ),
          
        ),
        
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: Color(0xFF0D47A1),
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    SizedBox(
      height: 100, // Decreased height
      width: 120,
      child: Image.asset('assets/appbarviderlogo1.png'),
    ),
    TextButton(onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
    }, child: Text('Skip',
    style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).primaryColor,
          ),)),// Moved the text widget to the end
  ],
  ),
),
      body: Padding(
        
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(7,7),
            color: Colors.blue,
            activeSize: Size.square(15),
            activeColor: Colors.lightBlue,
          ),
          showDoneButton: true,
          done: const Text('Done', style: TextStyle(fontSize: 20),),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(fontSize: 20),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25,),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
    
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
  
}