import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  final String title;
  final String imagePath;
  final Color switchColor;
  final String location;
  const HomeCard({super.key, required this.title, required this.imagePath, required this.switchColor, required this.location});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  
  bool switchValue=false;
  bool animateCards=false;
  @override
  void didUpdateWidget(covariant HomeCard oldWidget) {
    if(oldWidget.location!=widget.location){
  setState(() {
    animateCards=true;
  }
  );
    Future.delayed(const Duration(milliseconds: 200),(){
      setState(() {
        animateCards=false;
      });
    });;
    }
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
  void onChanged(bool value){
    setState(() {
      switchValue=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height:animateCards? width *0.435: width*0.46,
       width:animateCards? width *0.435: width*0.46,
      child: Card(
        color: switchValue? Colors.white: Colors.white.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
      children: [
  Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
  child: RichText(text: TextSpan(children: [
    TextSpan(
      text:"${widget.title}\n",
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700
      )
    ),
    TextSpan(
      text:'${widget.location}\n',
      style: TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontSize: 15,
        fontWeight: FontWeight.w700
      )
    ),
  ])
  ),
  ),
 Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    RotatedBox(
      quarterTurns: 3,
      child: Switch(
        value: switchValue,
        activeColor: widget.switchColor,
         onChanged: onChanged
         ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Image.asset(
        widget.imagePath,
        height: width*0.25,
        width: width*0.25,
      ),
    )
  ],
 ) 
      ],
    ),
  ),
    );
  }
}