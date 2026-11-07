import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/models/item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_memebers.dart';

import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrase_page.dart';
// import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef5da),
      appBar: AppBar(
        backgroundColor: Color(0xff47312b),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Category(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return NumbersPage();
                    }),
                  );
                },
                text: 'Numbers',
                color: Color(0xfff09136)),
          ),
          Expanded(
            child: Category(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const FamilyMembersPage();
                  }));
                },
                text: 'Family Numbers',
                color: Color(0xff548b34)),
          ),
          Expanded(
            child: Category(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const ColorsPage();
                  }));
                },
                text: 'Colors',
                color: Color(0xff7a31a0)),
          ),
          Expanded(
            child: Category(
               onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const PhrasePage();
                  }));
                },
              text: 'Phrases', 
              color: Color(0xff4fadc8)),
          ),
        ],
      ),
    );
  }
}

// class Category extends StatelessWidget {
//   Category({this.text, this.color});
//   String? text;
//   Color? color;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 18),
//       alignment: Alignment.centerLeft,
//       height: 80,
//       width: double.infinity,
//       color: color,
//       child: Text(
//         text!,
//         style: TextStyle(
//           color: const Color.fromARGB(255, 157, 56, 56),
//           fontSize: 20,
//         ),
//       ),
//     );
//   }
// }
