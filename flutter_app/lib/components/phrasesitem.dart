import 'package:flutter/material.dart';
import 'package:flutter_app/components/item_info.dart';
import 'package:flutter_app/models/number_model.dart';

class phrasesItem extends StatelessWidget {
  phrasesItem({super.key, required this.number, required Color color});
  final Color color = const Color.fromARGB(255, 52, 68, 150);
  final Data number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff538392),
      child: ItemInfo(number: number),
    );
  }
}
