import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/screens/home_screen/home_screen.dart';
import 'package:rick_and_morty/screens/plug_in_screen/plug_in_screen.dart';
import 'package:rick_and_morty/screens/settings_screen/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const PlugInScreen(),
    const PlugInScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) {
          currentIndex = i;
          setState(() {});
        },
        unselectedItemColor: const Color(0xFFBDBDBD),
        selectedItemColor: const Color(0xFF5856D6),
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/Char.svg'), label: 'Персонажи'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/Planet.svg'), label: 'Локации'),
          const BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: 'Эпизоды'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Настройки'),
        ],
      ),
    );
  }
}
