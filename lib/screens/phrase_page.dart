import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/components/phrase_item.dart';
import '../models/phrase.dart';


class PhrasePage extends StatelessWidget {
  const PhrasePage({Key? key}) : super(key: key);
  final List<Phrase> Phrases = const [
    Phrase(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: "Chan'neru tōroku o o wasurenaku",
      enName: 'dont forget to subscribe',
    
    ),
    Phrase(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Puroguramingu ga daisukidesu',
      enName: 'i love programming',
     
    ),
    Phrase(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),
    Phrase(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
     
    ),
    Phrase(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae wa nandesuka',
      enName: 'what is your name',
    ),
    Phrase(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Anime ga daisukidesu',
      enName: 'i love anime',
    ),

     Phrase(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling',
    ),

     Phrase(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kuru no',
      enName: 'are you coming',
    ),
     Phrase(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai ikimasu',
      enName: 'yes im coming',
    ),

   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: Phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            phrase: Phrases[index],
            color:const Color(0xff79359F),
            // itemType: 'colors',
          );
        },
      ),
    );
  }
}
