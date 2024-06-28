import 'package:flutter/material.dart';
import 'package:toku/components/widgets_items.dart';
import 'package:toku/components/itemClasses.dart';

class Colore extends StatelessWidget {
   Colore({Key? key}) : super(key: key);

  final List<Number> Nomber = const [
    Number(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Ichi',
        engName: 'One'),
    Number(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Ni',
        engName: 'two'),
    Number(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'San',
        engName: 'three'),
    Number(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Shi',
        engName: 'four'),
    Number(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Go',
        engName: 'five'),
    Number(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Rokou',
        engName: 'six'),
    Number(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Sebun',
        engName: 'seven'),
    Number(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'hachi',
        engName: 'eight'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4A322B),
        title: Text('Colors'),
      ),
      
      body: ListView.builder(

        itemCount: Nomber.length,
        itemBuilder:(context,index){
         return NoCategory(no: Nomber[index], loon: Color(0xff7E3FA3));

      }),
    );
  }
}