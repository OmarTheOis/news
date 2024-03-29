import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:newsapp/core/config/constants.dart';
import 'package:newsapp/main.dart';

import '../../../core/config/page_route_name.dart';

class drawer extends StatelessWidget {
  Function ontap;
   drawer({super.key,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constants.mediaquery.width*0.8,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            //f u
            alignment: Alignment.center,
            width: constants.mediaquery.width*9.8,
            height: 160,
            color: constants.theme.primaryColor,
            child: Text("News App!",style: constants.theme.textTheme.titleLarge,),
          ),
          InkWell(
            onTap: (){
              navigatorkey.currentState!.pushReplacementNamed(PageRouteName.homescreen);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 15,
                top: 25,
                bottom: 10,
              ),
              child: Row(
                children: [
                  Icon(Icons.list_alt_outlined,size: 25,color: Colors.black,),
                  SizedBox(width: 10,),
                  Text("categries",style: constants.theme.textTheme.bodyLarge?.copyWith(color: Colors.black,)


                  )],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
