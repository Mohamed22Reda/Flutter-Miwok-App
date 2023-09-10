import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/itemModel.dart';

class familyMembersPage extends StatelessWidget {
  const familyMembersPage({Key? key}) : super(key: key);
  final List<itemModel> numbers_list = const [
    itemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',

    ),
    itemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      enName: 'Grand Father',
      sound: 'sounds/family_members/grand_father.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grand Mother',
      sound: 'sounds/family_members/grand_mother.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīchan',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older_bother.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
      sound: 'sounds/family_members/older_sister.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger_brohter.wav',
    ),
    itemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger_sister.wav',
    ),
  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Family Members'),
      ),

      // it work like for loop & بتعرض الودجت اللي عندي علي الشاشه بس ولو جيت اعمل اسكرول  بتبدا تبني باقي الودجت  عشان تعرضها
      // هنا لازم الودجت تكون زي بعضها
      body: ListView.builder(
        itemCount: numbers_list.length,
        itemBuilder: (context,index){
          //print(num);
          return Item(
              item: numbers_list[index],
              color:Color(0xff558B37) ,
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