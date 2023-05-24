import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      //backgroundColor: TestColor.whiteColor,
      selectedItemColor: TestColor.greenColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.search_sharp),
          label: 'Поиск',
          //backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: "Business",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_taxi_outlined),
          label: "Поездки",
          //backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity_outlined),
          label: 'Профиль',
          //backgroundColor: Colors.pink,
        ),
      ],

    unselectedItemColor: TestColor.blackColor2,
    );
  }
}
///


