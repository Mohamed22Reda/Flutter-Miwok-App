import 'package:flutter/material.dart';
import 'package:miwok_app/screens/colors_page.dart';
import 'package:miwok_app/screens/family_page.dart';
import 'package:miwok_app/screens/phrase_page.dart';

import '../components/category_item.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Welcome To Toku App'),
      ),
      body: Column(
        children: [
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color:Color(0xffEF9235) ,
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const familyMembersPage();
              }));
            },
            text: 'Family Members',
            color:Color(0xff558B37) ,
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color:Color(0xff79359F) ,
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color:Color(0xff50ADC7) ,
          ),

        ],
      ),
    );
  }
}

