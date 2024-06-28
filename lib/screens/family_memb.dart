import 'package:flutter/material.dart';
import 'package:toku/components/widgets_items.dart';
import 'package:toku/components/itemClasses.dart';

class Family extends StatelessWidget {
  const Family({Key? key}) : super(key: key);
  final List<Number> Nomber = const [
    Number(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        engName: 'father'),
    Number(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya ',
        engName: 'mother'),
    Number(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojiisan ',
        engName: 'grand father'),
    Number(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo ',
        engName: 'grand mother'),
    Number(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        engName: 'son'),
    Number(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume ',
        engName: 'daughter'),
    Number(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'oniisan ',
        engName: 'older brother'),
    Number(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'oneesan ',
        engName: 'older sister'),
    Number(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otootosan ',
        engName: 'younger brother'),
    Number(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imootosan ',
        engName: 'younger sister')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4A322B),
        title: Text('Family members'),
      ),
      body:  ListView.builder(
            itemCount: Nomber.length,
            itemBuilder: (context, index) {
              return NoCategory(no: Nomber[index],
              loon: Color(0xff538033),);
            }),
    );
  }
}