import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/constants/app_images.dart';
import 'package:weather/features/main/home/bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const GetCurrentWeatherEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
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
                          const Text(
                            'Toshkent',
                            style: TextStyle(fontSize: 34, color: Colors.white),
                          ),
                          Text(
                            '${state.temp!.toInt()}°',
                            style: const TextStyle(fontSize: 80, color: Colors.white),
                          ),
                          const Text(
                            'Mostly Clear',
                            style:
                            TextStyle(fontSize: 20, color: Color(0xffEBEBF5)),
                          ),
                          const Text(
                            'H:24°   L:18°',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
