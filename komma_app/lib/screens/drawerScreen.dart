import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:komma_app/dise%C3%B1o.dart';
import '../diseño.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreen createState() => _DrawerScreen();
}

class _DrawerScreen extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      padding: EdgeInsets.only(top: 60, bottom: 60, left: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/ombrePurple.jpg'),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.png')),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Miroslava Fernandez',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 22),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            element['title'],
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: [
              Icon(Icons.settings, color: Colors.white),
              SizedBox(
                width: 10,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/')},
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
