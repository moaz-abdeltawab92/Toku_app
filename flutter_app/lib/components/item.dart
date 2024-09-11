import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/item_info.dart';
import 'package:flutter_app/models/number_model.dart';

class Item extends StatelessWidget {
  const Item({required this.number, required this.color});
  final Data number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color.fromARGB(255, 232, 231, 228),
              child: Image.asset(number.image!)),
          Expanded(child: ItemInfo(number: number)),
        ],
      ),
    );
  }
}
