import 'package:flutter/material.dart';
import 'package:weather/assets/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.mainPic,
              ),
              fit: BoxFit.fitWidth),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              top: 20,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: Column(
                  
                  children: [
                    Text('Bengaluru',style: TextStyle(fontSize: 34,color: Colors.white),),
                    
                     Text('19°',style: TextStyle(fontSize: 80,color: Colors.white),),
                     Text('Mostly Clear',style: TextStyle(fontSize: 20,color: Color(0xffEBEBF5)),),
                    Text('H:24°   L:18°',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}