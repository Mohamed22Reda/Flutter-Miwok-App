import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/itemModel.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.item, required this.color}) : super(key: key);
  final itemModel item;
  final Color color;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
           Container(
              color: Color(0xffFFF6DC),
              child: Image.asset(item.image!)
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.jpName,
                    style: TextStyle(color: Colors.white, fontSize: 25)),
                Text(item.enName,
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              padding:const EdgeInsets.only(right: 20) ,
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(item.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 40,
              )
          ),
        ],
      ),
    );
  }
}



class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});

  final itemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.jpName,
                    style: TextStyle(color: Colors.white, fontSize: 17)),
                Text(item.enName,
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              padding:const EdgeInsets.only(right: 20) ,
              onPressed: () {
                item.playSound();
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 40,
              )
          ),
        ],
      ),
    );
  }
}


