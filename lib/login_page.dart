import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget menuItem(String title, String color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextButton(
        onPressed: null,
        child: Text(
          title,
          style: GoogleFonts.firaMono(color: HexColor(color)),
        ),
      ),
    );
  }

  Widget makingSpace(double space) {
    return SizedBox(
      height: space,
    );
  }

  Widget loginButton() {
    return Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromRGBO(40, 146, 215, 1),
              Color.fromRGBO(44, 165, 141, 1),
            ],
          ),
        ),
        child: Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: HexColor('#2CA58D'),
                borderRadius: BorderRadius.circular(3.5),
              ),
              child: const Icon(
                Icons.login_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Login',
                  style: GoogleFonts.firaMono(color: HexColor("#FFFFFF"))),
            ),
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    const whiteColor = "#FFFFFF";
    const greenColor = "#2CA58D";

    TextStyle styleMenu = TextStyle(color: HexColor('#FFFFFF'));
    Widget menuBar = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 100, right: 150),
                child: SvgPicture.asset(
                  'images/logo.svg',
                  width: 131.21,
                  height: 26,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  menuItem('Home', greenColor),
                  menuItem('Episodes', whiteColor),
                  menuItem('Features', whiteColor),
                  menuItem('About', whiteColor),
                  menuItem('Blog', whiteColor),
                  TextButton(
                      onPressed: null,
                      child: Icon(Icons.search, color: styleMenu.color)),
                ],
              ),
            ],
          ),
        ),
      ],
    );

    Widget textFiedlLoginImage = Container(
      margin: const EdgeInsets.only(top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 50),
                child: Column(
                  children: [
                    Text(
                      'Login to Your Account',
                      style: GoogleFonts.firaMono(
                          color: HexColor(greenColor),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    makingSpace(30),
                    SizedBox(
                      width: 412.0,
                      child: TextField(
                        style: TextStyle(color: HexColor(whiteColor)),
                        decoration: InputDecoration(
                            hintText: 'please insert your email',
                            hintStyle: GoogleFonts.firaMono(
                                color: HexColor("#2CA58D")),
                            icon: Icon(Icons.email_rounded,
                                color: HexColor(greenColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: HexColor(greenColor)))),
                      ),
                    ),
                    makingSpace(20),
                    SizedBox(
                      width: 412.0,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: HexColor(whiteColor)),
                        decoration: InputDecoration(
                            hintText: 'please insert your password',
                            hintStyle: GoogleFonts.firaMono(
                                color: HexColor("#2CA58D")),
                            icon: Icon(Icons.password_rounded,
                                color: HexColor(greenColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    BorderSide(color: HexColor(greenColor)))),
                      ),
                    ),
                    makingSpace(15),
                    loginButton()
                  ],
                ),
              ),
              Image.asset(
                'images/seatedGirl.png',
                height: 487,
              )
            ],
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: HexColor('#0A2342'),
      body: Column(
        children: [menuBar, textFiedlLoginImage],
      ),
    );
  }
}
