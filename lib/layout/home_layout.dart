import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadith/hadith_view.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';
import 'package:islami_app/moduls/radio/radio_view.dart';
import 'package:islami_app/moduls/settings/settings_view.dart';
import 'package:islami_app/moduls/tasbeeh/tasbeeh_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screenWidgets = [
    QuranView(),
    HadithView(),
    TasbeehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_light.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
          body: screenWidgets[selectedIndex],
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("اسلامي"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/Group 6.png')),
                  label: "Hadith"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: "Tasbeeh"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "settings"),
            ],
          ),
        ));
  }
}
