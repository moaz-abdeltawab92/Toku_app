import 'package:flutter/material.dart';
import 'package:flutter_app/components/item.dart';
import 'package:flutter_app/models/number_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Data> numberslist = const [
    Data(
        sound: "sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png",
        jbName: "Chichioya",
        enName: "Father"),
    Data(
        sound: "sounds/family_members/mother.wav",
        image: "assets/images/family_members/family_mother.png",
        jbName: "Hahaoya",
        enName: "Mother"),
    Data(
        sound: "sounds/family_members/grand father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        jbName: "Ojiisan",
        enName: "Grandfather"),
    Data(
        sound: "sounds/family_members/grand mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        jbName: "Sobo",
        enName: "Grandmother"),
    Data(
        sound: "sounds/family_members/son.wav",
        image: "assets/images/family_members/family_son.png",
        jbName: "Musuko",
        enName: "Son"),
    Data(
        sound: "sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        jbName: "Musume",
        enName: "Daughter"),
    Data(
        sound: "sounds/family_members/younger brohter.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        jbName: "Otouto",
        enName: "younger brother"),
    Data(
        sound: "sounds/family_members/younger sister.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        jbName: "Imouto",
        enName: "younger sister"),
    Data(
        sound: "sounds/family_members/older bother.wav",
        image: "assets/images/family_members/family_older_brother.png",
        jbName: "Oniisan",
        enName: "older brother"),
    Data(
        sound: "sounds/family_members/older sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        jbName: "Oneesan",
        enName: "older sister"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Members'),
          titleTextStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontSize: 23),
          backgroundColor: Color.fromARGB(255, 199, 191, 168),
        ),
        body: ListView.builder(
          itemCount: numberslist.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Item(
                  color: Color(0xff538392),
                  number: numberslist[index],
                ),
                Divider(
                  // الفاصل بين العناصر
                  color: Colors.grey,
                  thickness: 1.5,
                  height: 1,
                  // endIndent: ,
                  indent: 101, // ارتفاع الفاصل (المسافة بين العناصر)
                ),
              ],
            );
          },
        ));
  }

  // List<Widget> getList(List<Number> numberslist) {
  //   List<Item> list = [];
  //   for (int i = 0; i < numberslist.length; i++) {
  //     list.add(Item(number: numberslist[i]));
  //   }
  //   return list;
  // }
}
