import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/phrase.dart';

class PhraseItem extends StatelessWidget {
  final Phrase phrase;
  final Color color;

  const PhraseItem({
    Key? key,
    required this.phrase,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(phrase.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}