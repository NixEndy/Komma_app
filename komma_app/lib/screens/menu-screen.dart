import 'package:flutter/material.dart';
import 'package:komma_app/screens/drawerScreen.dart';
import 'package:komma_app/screens/homeScreen.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
