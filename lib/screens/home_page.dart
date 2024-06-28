import 'package:flutter/material.dart';
import 'package:toku/components/widgets_items.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/family_memb.dart';
import 'package:toku/screens/phrases.dart';
import 'numbers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4DA),
      appBar: AppBar(
        backgroundColor: Color(0xff4A322B),
        title: Text('Tokuo'),
      ),
      body: Column(
        children: [
          Home_widget(
            text: 'Numbers',
            color: Color(0xffFA9532),
            OnTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Numbers()));
            },
          ),
          Home_widget(
            text: 'Family members',
            color: Color(0xff538033),
            OnTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Family()));
            },
          ),
          Home_widget(
            text: 'Colors',
            color: Color(0xff7E3FA3),
            OnTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Colore()));
            },
          ),
          Home_widget(
            text: 'Phrases',
            color: Color(0XFF48A5CC),
            OnTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Phrases()));
            },
          )
        ],
      ),
    );
  }
}
