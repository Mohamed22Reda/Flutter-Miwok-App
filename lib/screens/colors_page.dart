import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/itemModel.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<itemModel> numbers_list = const [
    itemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'Black',
      sound: 'sounds/colors/black.wav',

    ),
    itemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    itemModel(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
    itemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'gray',
      sound: 'sounds/colors/gray.wav',
    ),
    itemModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    itemModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    itemModel(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'White',
      sound: 'sounds/colors/white.wav',
    ),

    itemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokorippoi kiiro',
      enName: 'Dusty Yellow',
      sound: 'sounds/colors/dusty_yellow.wav',
    ),

  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Colors'),
      ),

      // it work like for loop & بتعرض الودجت اللي عندي علي الشاشه بس ولو جيت اعمل اسكرول  بتبدا تبني باقي الودجت  عشان تعرضها
      // هنا لازم الودجت تكون زي بعضها
      body: ListView.builder(
        itemCount: numbers_list.length,
        itemBuilder: (context,index){
          //print(num);
          return Item(
              item: numbers_list[index],
              color: Color(0xff79359F)
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
