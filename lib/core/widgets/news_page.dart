import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/articel_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Time_converter.dart';

class NewsPage extends StatelessWidget {
  ArticelsModel articelsModel;

  NewsPage({super.key, required this.articelsModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(articelsModel.source.id),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 233,
                width: size.width,

                child: Image.network(articelsModel.image, fit: BoxFit.cover,)
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.centerLeft,
              child: Text(articelsModel.title,
                style: theme.textTheme.titleLarge!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500),),),

            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.bottomRight,
              child: Text(timeConverter(articelsModel.date),
                style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),),),
            Divider(color: theme.primaryColor, thickness: 2,),
            SizedBox(height: 30,),
            Text("Article:", style: theme.textTheme.titleLarge!.copyWith(
                color: Colors.black),),
            SizedBox(height: 30,),
            SingleChildScrollView(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(articelsModel.description,
                  style: theme.textTheme.bodyLarge!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),),),
            ),


          ],

        ),
      ),
    );
  }
}
