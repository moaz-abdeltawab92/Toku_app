import 'package:flutter/material.dart';
import 'package:flutter_app/components/item.dart';
import 'package:flutter_app/components/phrasesitem.dart';
import 'package:flutter_app/models/number_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Data> phrasesList = const [
    Data(
        sound: "sounds/phrases/are_you_coming.wav",
        jbName: "Kimasu ka ?",
        enName: "Are you coming?"),
    Data(
        sound: "sounds/phrases/yes_im_coming.wav",
        jbName: "Hai, Mukatteimasu",
        enName: "Yes, I'm coming"),
    Data(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        jbName: "Channeru tōroku o wasurenaide kudasai",
        enName: "Don't forget to subscribe."),
    Data(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        jbName: "Go kibun wa ikagadesu ka??",
        enName: "How are you feeling?"),
    Data(
        sound: "sounds/phrases/i_love_anime.wav",
        jbName: "Watashi wa anime ga daisukidesu",
        enName: "I love anime."),
    Data(
        sound: "sounds/phrases/i_love_programming.wav",
        jbName: "Watashi Puroguramingu ga daisukidesu",
        enName: "I love programming."),
    Data(
        sound: "sounds/phrases/programming_is_easy.wav",
        jbName: "Puroguramingu wa kantan desu",
        enName: "Programming is easy."),
    Data(
        sound: "sounds/phrases/what_is_your_name.wav",
        jbName: "Anata no namae wa nan desu ka?",
        enName: "What is your name?"),
    Data(
        sound: "sounds/phrases/where_are_you_going.wav",
        jbName: "Doko ni iku no?",
        enName: "Where are you going?"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        titleTextStyle:
            const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 23),
        backgroundColor: Color.fromARGB(255, 199, 191, 168),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return phrasesItem(
            number: phrasesList[index],
            color: Color(0xff538392),
          );
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numberslist) {
  //   List<Item> list = [];
  //   for (int i = 0; i < numberslist.length; i++) {
  //     list.add(Item(number: numberslist[i]));
  //   }
  //   return list;
  // }
}
