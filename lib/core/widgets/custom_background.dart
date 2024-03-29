import 'package:flutter/material.dart';

class custombackground extends StatelessWidget {
  custombackground({super.key,this.widget});
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/backgrond.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: widget
    );
  }
}
