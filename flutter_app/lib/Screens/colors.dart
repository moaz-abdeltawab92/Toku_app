import 'package:flutter/material.dart';
import 'package:flutter_app/components/item.dart';
import 'package:flutter_app/models/number_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Data> numberslist = const [
    Data(
        sound: "sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png",
        jbName: "Burakku",
        enName: "Black"),
    Data(
        sound: "sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png",
        jbName: "Chairo",
        enName: "Brown"),
    Data(
        sound: "sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png",
        jbName: "Gure",
        enName: "Gray"),
    Data(
        sound: "sounds/colors/green.wav",
        image: "assets/images/colors/color_green.png",
        jbName: "Midori",
        enName: "Green"),
    Data(
        sound: "sounds/colors/white.wav",
        image: "assets/images/colors/color_white.png",
        jbName: "Shiro",
        enName: "White"),
    Data(
        sound: "sounds/colors/yellow.wav",
        image: "assets/images/colors/yellow.png",
        jbName: "Kiiro",
        enName: "Yellow"),
    Data(
        sound: "sounds/colors/dusty yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        jbName: "Kusunda Kiiro",
        enName: "dusty Yellow"),
    Data(
        sound: "sounds/colors/red.wav",
        image: "assets/images/colors/color_red.png",
        jbName: "Aka",
        enName: "Red"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Colors'),
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
