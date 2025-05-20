import 'package:flutter/material.dart';
import 'package:smart_home_ui/widgets/home_card.dart';
import 'package:smart_home_ui/widgets/location_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<String> menuItems = [
    'Living Room',
    'Bedroom',
    'Kitchen',
    'Bathroom',
  ];
 int selectedIndex=0;
 void onItemTapped(int index){
  setState(() {
    selectedIndex=index;
  });
 }
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
            ),
          ],
        ),
         const SizedBox(height: 35,),
            LocationMenu(
              menuItems: menuItems,
               selectedIndex: selectedIndex,
                onItemTapped: onItemTapped
                ),
                const SizedBox(height: 35,),
                Text("4 Active Devices",style: TextStyle(
                  color:Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                )
                ,),
                const SizedBox(height: 35,),
                Wrap(
                  children: [
                    HomeCard(
                      title: 'Smart Lamp',
                       imagePath: 'assets/icons/idea.png',
                        switchColor: Colors.red,
                         location: menuItems[selectedIndex]
                         ),
                          HomeCard(
                      title: 'Smart Ac',
                       imagePath: 'assets/icons/air-conditioner.png',
                        switchColor: Colors.green,
                         location: menuItems[selectedIndex]
                         ),
                          HomeCard(
                      title: 'Smart Fan',
                       imagePath: 'assets/icons/fan.png',
                        switchColor: Colors.yellow,
                         location: menuItems[selectedIndex]
                         ),
                          HomeCard(
                      title: 'Smart Tv',
                       imagePath: 'assets/icons/smart-tv.png',
                        switchColor: Colors.purple,
                         location: menuItems[selectedIndex]
                         ),
                  ],
                )
       ],)
       ),
      ),
    );
  }
}