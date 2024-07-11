import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather/assets/app_icons.dart';
import 'package:weather/assets/app_images.dart';
import 'package:weather/presentation/home/presentation/menu_page.dart';
import 'package:weather/presentation/home/presentation/home_page.dart';
import 'package:weather/presentation/home/presentation/searching_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _indexNum = 1;

  final List<Widget> nav_bars = const [
    SearchingPage(),
    HomePage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xff262C51),
        color: Color(0xff2E335A),
        index: 1,
        onTap: (index) {
          print(index);
          setState(() {
            _indexNum = index;
          });
          
        },
        items: [
          SvgPicture.asset(AppIcons.location),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
          SvgPicture.asset(AppIcons.list),
        ],
      ),
      body: nav_bars[_indexNum],
    );
  }
}
