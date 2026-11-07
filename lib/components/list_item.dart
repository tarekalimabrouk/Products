import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:toku/models/number.dart';
import '../models/item.dart';

class Item extends StatelessWidget {
  const Item({required this.color, Key? key, required this.number})
      : super(key: key);
  final ItemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xfffff3dc), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              // player.setSourceAsset('assets/sounds/colors/black.wav');
              player.play(AssetSource(number.sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 25,
            ),
          )
          // Padding(
          //   padding: const EdgeInsets.only(right: 15),

          //   child: GestureDetector(
          //     onTap: () {

          //     },
          //     child: Icon(
          //       Icons.play_arrow,
          //       color: Colors.white,
          //       size: 25,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

