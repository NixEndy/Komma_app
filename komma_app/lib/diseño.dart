//Caracteristicas globales para las vaiables de kbodyText, kwhite y kblue
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const TextStyle kBodyText =
    TextStyle(fontSize: 18, color: Colors.white, height: 1);

const Color kWhite = Colors.white;
const Color kBlue = Color.fromRGBO(255, 160, 122, 0.8);
const String FontNamefault = 'EathOrbiter';

List<BoxShadow> shadowList = [
  BoxShadow(
      color: Colors.deepPurpleAccent[200],
      blurRadius: 30,
      offset: Offset(0, 18))
];

List<Map> categories = [
  {'name': 'Studio Bar', 'iconPath': 'assets/images/studiobar.png'},
  {'name': 'La Sotoleria', 'iconPath': 'assets/images/sotoleria.jpg'},
  {'name': 'Patio Mamitas', 'iconPath': 'assets/images/patiomamitas.jpg'},
  {'name': 'Don Arturo', 'iconPath': 'assets/images/donArturo.jpg'},
  {'name': 'Cerveceria 19', 'iconPath': 'assets/images/cerveceria19.png'},
  {'name': 'Casa Cervecera', 'iconPath': 'assets/images/casaCervecera.jpg'},
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.userAstronaut, 'title': 'Profile'},
  {'icon': FontAwesomeIcons.newspaper, 'title': 'Notifications'},
  {'icon': FontAwesomeIcons.envelope, 'title': 'Messages'},
  {'icon': FontAwesomeIcons.clock, 'title': 'Reservations'},
  {'icon': FontAwesomeIcons.heartbeat, 'title': 'Your favorites'},
];
