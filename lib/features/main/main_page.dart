import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather/constants/app_icons.dart';
import 'package:weather/features/main/menu/menu_page.dart';
import 'package:weather/features/main/home/home_page.dart';
import 'package:weather/features/main/search/searching_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _indexNum = 1;

  final List<Widget> navBars = const [
    SearchingPage(),
    HomePage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xff262C51),
        color: const Color(0xff2E335A),
        index: 1,
        onTap: (index) {
          setState(() {
            _indexNum = index;
          });
        },
        items: [
          SvgPicture.asset(AppIcons.location),
          const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
          SvgPicture.asset(AppIcons.list),
        ],
      ),
      body: navBars[_indexNum],
    );
  }
}
