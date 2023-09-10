import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class itemModel
{
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const itemModel({required this.sound,
    this.image,
    required this.jpName,
    required this.enName
  });

  playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

}