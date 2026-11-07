import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
// import 'package:toku/models/number.dart';
import '../models/item.dart';
class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = const [
    ItemModel(
            sound:'sounds/numbers/number_one_sound.mp3',

        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    ItemModel(
            sound:'sounds/numbers/number_two_sound.mp3',

        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two'),
    ItemModel(
            sound:'sounds/numbers/number_three_sound.mp3',

        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three'),
    ItemModel(
            sound:'sounds/numbers/number_four_sound.mp3',

        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four'),
    ItemModel(
            sound:'sounds/numbers/number_five_sound.mp3',

        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five'),
    ItemModel(
            sound:'sounds/numbers/number_six_sound.mp3',

        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six'),
    ItemModel(
            sound:'sounds/numbers/number_seven_sound.mp3',

        image: 'assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven'),
    ItemModel(
            sound:'sounds/numbers/number_eight_sound.mp3',

        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    ItemModel(
            sound:'sounds/numbers/number_nine_sound.mp3',

        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu',
        enName: 'nine'),
    ItemModel(
            sound:'sounds/numbers/number_ten_sound.mp3',

        image: 'assets/images/numbers/number_ten.png',
        jpName: 'jyu',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff442f26),
        title: Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: ((context, index) {
          return Item(
            color: const Color(0xffEF9235),
            number: numbers[index]);
        }),

        //   children: getList(numbers),

        //  [
        //   Item(number: numbers[0]),
        //   Item(number: numbers[1]),
        //   Item(number: numbers[2]),
        //   Item(number: numbers[3]),
        //   Item(number: numbers[4]),
        //   Item(number: numbers[5]),
        //   Item(number: numbers[6]),
        //   Item(number: numbers[7]),
        //   Item(number: numbers[8]),
        //   Item(number: numbers[9]),
        // ],
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemslist = [];
  //   for (var i = 0; i < numbers.length; i++) {
  //     itemslist.add(Item(
  //       number: numbers[i],
  //     ));
  //   }
  //   return itemslist;
  // }
}
