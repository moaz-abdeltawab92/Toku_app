import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? text;
  Color? color;
  String? image;
  double? bottomLeft;
  double? bottomRight;
  double? topLeft;
  double? topRight;
  Category(
      {this.text,
      this.color,
      this.image,
      this.bottomLeft,
      this.bottomRight,
      this.topLeft,
      this.topRight,
      this.onTap});
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        top: 20,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                text!,
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 11,
              ),
              CircleAvatar(
                radius: 27,
                child: Image(image: NetworkImage("$image")),
              )
            ],
          ),
          padding: EdgeInsets.all(16),
          height: 170,
          width: 110,
          decoration: BoxDecoration(
              color: color!,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(bottomLeft!),
                topRight: Radius.circular(topRight!),
                bottomRight: Radius.circular(bottomRight!),
                topLeft: Radius.circular(topLeft!),
              )),
        ),
      ),
    );
  }
}
