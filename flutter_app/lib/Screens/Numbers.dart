import 'package:flutter/material.dart';
import 'package:flutter_app/components/item.dart';
import 'package:flutter_app/models/number_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Data> numberslist = const [
    Data(
        sound: "sounds/numbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        jbName: "Ichi",
        enName: "One"),
    Data(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        jbName: "Ni",
        enName: "Two"),
    Data(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        jbName: "San",
        enName: "Three"),
    Data(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        jbName: "Shi",
        enName: "Four"),
    Data(
        sound: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        jbName: "Go",
        enName: "Five"),
    Data(
        sound: "sounds/numbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        jbName: "Roku",
        enName: "Six"),
    Data(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        jbName: "Sebun",
        enName: "Seven"),
    Data(
        sound: "sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        jbName: "Hachi",
        enName: "Eight"),
    Data(
        sound: "sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        jbName: "Kyu",
        enName: "Nine"),
    Data(
        sound: "sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        jbName: "Ju",
        enName: "Ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Numbers'),
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
