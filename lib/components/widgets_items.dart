

// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/itemClasses.dart';


class Home_widget extends StatelessWidget {
  Home_widget({this.text, this.color, this.OnTap});

  String? text;
  Color? color;
  VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.only(left: 15),
        alignment: Alignment.center,
        width: double.infinity,
        height: 120,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class NoCategory extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  NoCategory({required this.no, required this.loon});
  final Number no;
  final Color? loon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: loon,
      child: Row(
        children: [
          Container(color: Color(0xffFFF4DA), child: Image.asset(no.image!)),
          Expanded(
            child: New_row(no: no, color: loon),
          )
        ],
      ),
    );
  }
}

class New_row extends StatelessWidget {
  const New_row({super.key, required this.no, required this.color});
  final Number no;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(no.jpName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                    SizedBox(height: 10),
                Text(no.engName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(no.sound));
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }
}

class Phrase_widget extends StatelessWidget {
  const Phrase_widget({super.key, this.color, required this.no});
  final Color? color;
  final Number no;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: New_row(no: no, color: color),
    );
  }
}
