import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
       width: double.infinity,
       height: double.infinity,
       decoration: const BoxDecoration(
        gradient: RadialGradient(colors: [
          Color(0xFF528578),
           Color(0xFFF5CC62),
            Color(0xFFFE9490),
        ],
        center: Alignment(0.0, 1.0),
        stops: [0.0, 0.5, 1.0],
        radius: 2.0
        )
       ),
       padding: const EdgeInsets.all(10),
       child: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          children: [
            Expanded( // This widget allows the child to take up all available space
              child: RichText(  //  has parameter called text accept textspan which has children as list of textspan each has text and style  This widget allows you to create text with multiple styles
                text: const TextSpan(  // TextSpan is used to create a span of text with different styles
                children: [
                  TextSpan( 
                   text: 'Welcome\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                    TextSpan(
                   text: 'Back To Your Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ]
              )
              ),
            ),
            Container(
              height: 110,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                 padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  'assets/icons/device.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        )
       ],)),
      ),
    );
  }
}