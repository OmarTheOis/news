import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Time_converter.dart';
import 'package:newsapp/core/widgets/news_page.dart';
import 'package:newsapp/model/articel_model.dart';

class ArticelsItem extends StatefulWidget {
  final String image;
  final String id;
  final String title;
  final String time;
  final ArticelsModel articelsModel;
  //final String description;

  const ArticelsItem({super.key, required this.image, required this.title, required this.id, required this.time, required this.articelsModel, });

  @override
  State<ArticelsItem> createState() => _ArticelsItemState();
}

class _ArticelsItemState extends State<ArticelsItem> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),

      child: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsPage(articelsModel: widget.articelsModel)));
            },
            child: Container(
              height: 233,
              width: size.width,

              child: Image.network(widget.image,fit: BoxFit.cover,)
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(widget.id,style:theme.textTheme.bodySmall!.copyWith(color: Color(0xFF79828B),fontSize: 20),),

          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(widget.title,style: theme.textTheme.bodyLarge!.copyWith(color: Colors.black,fontWeight: FontWeight.w500), ),),

          Container(
            alignment: Alignment.bottomRight,
            child: Text(timeConverter(widget.time),style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15), ),),


        ],

      ),
    );
  }

}