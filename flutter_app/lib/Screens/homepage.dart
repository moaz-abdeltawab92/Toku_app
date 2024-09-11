import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Numbers.dart';
import 'package:flutter_app/Screens/colors.dart';
import 'package:flutter_app/Screens/family_members.dart';
import 'package:flutter_app/Screens/phrases_page.dart';
import 'package:flutter_app/components/category_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 199, 191, 168),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        child: Container(
          width: 400,
          height: 900,
          decoration: const BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              )),
          child: Column(
            children: [
              const Padding(
                padding: const EdgeInsets.only(top: 50, right: 25, left: 10),
                child: Card(
                  color: Color.fromARGB(255, 199, 191, 168),
                  elevation: 3.5,
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 25,
                        child: Image(
                          image: NetworkImage(
                              "https://www.pngmart.com/files/21/Japan-Transparent-PNG.png"),
                        )),
                    title: Text(
                      "  Toku App",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 400,
                width: 300,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 247, 246, 248),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                      topLeft: Radius.circular(70),
                    )),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Category(
                          text: "Numbers",
                          color: Color(0xff538392),
                          bottomLeft: 30,
                          topRight: 30,
                          image:
                              "https://th.bing.com/th/id/OIP.yfNmAwbaMN02POjQ6jF3kgHaHa?w=170&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7",
                          bottomRight: 0,
                          topLeft: 0,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return NumbersPage();
                            }));
                          },
                        ),
                        Category(
                          text: " Family",
                          color: Color(0xff80B9AD),
                          bottomLeft: 0,
                          topRight: 0,
                          image:
                              "https://t3.ftcdn.net/jpg/00/74/45/84/360_F_74458490_OQvTsYVcXO02Q5AFiWW4Ec4fbtXRSbxg.jpg",
                          bottomRight: 30,
                          topLeft: 30,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return FamilyMembersPage();
                            }));
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Category(
                          text: " Colors ",
                          color: Color(0xff80B9AD),
                          bottomLeft: 0,
                          topRight: 0,
                          image:
                              "https://th.bing.com/th/id/OIP.iZuX5pnfvOWhUsPie98ffAHaGL?rs=1&pid=ImgDetMain",
                          bottomRight: 30,
                          topLeft: 30,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ColorsPage();
                            }));
                          },
                        ),
                        Category(
                          text: "Phrase",
                          color: Color(0xff538392),
                          bottomLeft: 30,
                          topRight: 30,
                          image:
                              "https://ih0.redbubble.net/image.652393791.4644/flat,1000x1000,075,f.jpg",
                          bottomRight: 0,
                          topLeft: 0,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PhrasesPage();
                            }));
                          },
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
