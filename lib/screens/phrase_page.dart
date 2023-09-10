import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/itemModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<itemModel> numbers_list = const [
    itemModel(
      jpName: 'Kimasu ka',
      enName: 'Are You Coming',
      sound: 'sounds/phrases/are_you_coming.wav',

    ),
    itemModel(
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'Dont Forget To Subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    itemModel(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How are you feeling',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    itemModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    itemModel(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'i love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    itemModel(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    itemModel(
      jpName: 'Namae wa nandesu ka',
      enName: 'What is your name',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),

    itemModel(
      jpName: 'Doko ni iku no',
      enName: 'Where are you going',
      sound:  'sounds/phrases/where_are_you_going.wav',
    ),

    itemModel(
      jpName: 'Hai watashi wa kite imasu',
      enName: 'Yes Im coming',
      sound:  'sounds/phrases/yes_im_coming.wav',
    ),

  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Phrases'),
      ),

      // it work like for loop & بتعرض الودجت اللي عندي علي الشاشه بس ولو جيت اعمل اسكرول  بتبدا تبني باقي الودجت  عشان تعرضها
      // هنا لازم الودجت تكون زي بعضها
      body: ListView.builder(
        itemCount: numbers_list.length,
        itemBuilder: (context,index){
          //print(num);
          return PhrasesItem(
              item: numbers_list[index],
              color: Color(0xff50ADC7)
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
