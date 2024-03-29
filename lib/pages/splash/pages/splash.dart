import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newsapp/main.dart';
import 'package:newsapp/pages/home/pages/homescreen.dart';
import '../../../core/config/page_route_name.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});
  @override
  State<splashscreen> createState() => _splashscreenState();
}
class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4),
            () {
          navigatorkey.currentState!.
          pushReplacementNamed(PageRouteName.homescreen);
        });
    // void initState() {
    //   Future.delayed(Duration(seconds: 4),
    //           ()=>navigatorkey.currentState!.
    //       pushReplacementNamed(PageRouteName.homescreen)
    //   );
    //   super.initState();
    // }
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/backgrond.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Image.asset("assets/images/splashicon.png")
    );
  }
}
