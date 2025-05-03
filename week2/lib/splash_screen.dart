import 'package:flutter/material.dart';
import 'languages_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  super.initState();

  // Wait 3 seconds and then navigate to HomePage
  Future.delayed(Duration(seconds: 1), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Languges()),
    );
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
       height: double.infinity,
        width: double.infinity,
          ),
         Center(
          child:
          Container(
           height: 150,
           width: 150,
            
           
          decoration:BoxDecoration(
           
            
            shape:BoxShape.circle,
            image:DecorationImage(
                fit:BoxFit.cover,
                image:AssetImage( "images/Cat.jpg")

          )
          ),
          )
           
          
         ),
         
        ]

        )
      );

     
  }
}