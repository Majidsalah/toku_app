import 'package:flutter/material.dart';
import 'package:toku/components/widgets_items.dart';
import 'package:toku/components/itemClasses.dart';

class Phrases extends StatelessWidget {
   Phrases({Key? key}) : super(key: key);
  final List<Number> phras = [
    Number(
        
        sound: 'sounds/phrases/1.wav',
        jpName: 'are you coming',
        engName: 'Kimasu ka'),
    Number(
       
        sound: 'sounds/phrases/2.wav',
        jpName: 'Kōdoku suru koto\n o wasurenaide kudasai',
        engName: 'dont forgot to subscribe'),
    Number(
       
        sound: 'sounds/phrases/3.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        engName: 'how are you feeling'),
    Number(
      
        sound: 'sounds/phrases/4.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        engName: 'I love anime'),
    Number(
       
        sound: 'sounds/phrases/5.wav',
        jpName: 'Puroguramingu ga daisukidesu',
        engName: 'I love programming'),
    Number(
       
        sound: 'sounds/phrases/6.wav',
        jpName: 'Puroguramingu wa kantandesu',
        engName: 'programming is easy'),
    Number(
      
        sound: 'sounds/phrases/7.wav',
        jpName: 'Anata no namae wa nandesuka',
        engName: 'whats your name '),
    Number(
       
        sound: 'sounds/phrases/8.wav',
        jpName: 'Doko ni iku no',
        engName: 'where are you going'),
    Number(
       
        sound: 'sounds/phrases/9.wav',
        jpName: 'Hai, ikimasu',
        engName:'yes Iam coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        
      ),
      body: ListView.builder(
        itemCount: phras.length,
        itemBuilder: (context,indx)
      {
        
        return Phrase_widget(no: phras[indx],color: Color(0XFF48A5CC),);
      }),
    );
  }
}
