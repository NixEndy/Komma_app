import 'package:flutter/material.dart';
import 'package:komma_app/widgets/rounded-button.dart';

class ImageEventContainer extends StatelessWidget {
  const ImageEventContainer({
    Key key,
    @required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 250,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                  child: SizedBox(
                    height: 220,
                    child: Align(
                      child: Image.asset(image),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 10,
                  ),
                  child: RoundedButton(
                      buttonName: 'Reserve', screenName: 'MenuScreen'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
