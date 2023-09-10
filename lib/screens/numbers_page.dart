import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/itemModel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<itemModel> numbers_list = const [
    itemModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3',

    ),
    itemModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    itemModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    itemModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    itemModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    itemModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
       sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    itemModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    itemModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    itemModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    itemModel(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'jū',
        enName: 'ten',
       sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Numbers'),
      ),

      // it work like for loop & بتعرض الودجت اللي عندي علي الشاشه بس ولو جيت اعمل اسكرول  بتبدا تبني باقي الودجت  عشان تعرضها
      // هنا لازم الودجت تكون زي بعضها
      body: ListView.builder(
        itemCount: numbers_list.length,
        itemBuilder: (context,index){
          //print(num);
          return Item(
              item: numbers_list[index],
              color: Color(0xffEF9235)
          );
        },
      ),
    );
  }

  // هنا بيعرض الودجت كلها مره واحده و هنا ممكن تكون الودجت مختلفه عادي
  // List<Widget> getList(List<Number> numbers)
  // {
  //   List<Widget> itemsList = [];
  //   for(int i =0 ;i<numbers.length;i++)
  //     {
  //       itemsList.add(Item(number: numbers[i]));
  //     }
  //   return itemsList;
  // }
}
