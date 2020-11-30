import 'package:flutter/material.dart';
import 'package:komma_app/dise%C3%B1o.dart';
import 'package:komma_app/widgets/image-event-container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaledFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaledFactor)
        ..rotateY(isDrawerOpen ? 0.5 : 0.0),
      duration: Duration(milliseconds: 250),
      //color: Colors.white,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/aestheticPlanta.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 50,
                          ),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaledFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 50,
                            color: Colors.black87,
                          ),
                          onPressed: () {
                            setState(() {
                              xOffset = 240;
                              yOffset = 150;
                              scaledFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          },
                        ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search),
                    Text(
                      'Search for a specific club',
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                    Icon(Icons.settings),
                  ],
                ),
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 80,
                            width: 80,
                          ),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                },
              ),
            ),
            ImageEventContainer(
              image: 'assets/images/valentines.jpg',
            ),
            ImageEventContainer(
              image: 'assets/images/summer.jpg',
            ),
            ImageEventContainer(
              image: 'assets/images/newYear.jpg',
            ),
            ImageEventContainer(
              image: 'assets/images/halloween.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
