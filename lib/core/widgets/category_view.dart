import 'package:flutter/material.dart';
import 'package:newsapp/core/widgets/custom_background.dart';
import 'package:newsapp/model/articel_model.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/model/sources_model.dart';
import 'package:newsapp/network/apiManager.dart';

class CategoryView extends StatefulWidget {
  CategoryModel categoryModel;

  CategoryView({super.key, required this.categoryModel});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return custombackground(
       widget: FutureBuilder(
           future: apimanager.fetchDataSources(widget.categoryModel.id),
           builder:(context, snapshot) {
             if(snapshot.hasError){
               return Center(
                 child: Text(snapshot.error.toString()),
               );

             }
             List<SourcesModel> sources = snapshot.data ?? [];
             return Column(
               children: [
                 Expanded(
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: sources.length,
                     itemBuilder: (context, index) => Padding(
                         padding: EdgeInsets.all(15),
                         child: InkWell(
                             onTap: (){
                               currentindex=index;
                               setState(() {

                               });
                             },
                             child: Text(sources[index].id,style: TextStyle(color: Colors.black, fontSize: 25),)))

    ),
                 ),
                 if(sources.isNotEmpty)
                 FutureBuilder(
                     future: apimanager.fetchDataArticels(sources[currentindex].id),
                     builder: (context, snapshot) {
                       if(snapshot.hasError){
                         return Center(
                           child: Text(snapshot.error.toString()),
                         );
                       }
                       List<ArticelsModel> articels = snapshot.data ?? [];
                       return Expanded(
                         child: ListView.builder(
                              itemCount: articels.length,
                             itemBuilder: (context, index) => Padding(
                                 padding: EdgeInsets.all(10),
                                 child: Text(articels[index].description,style: TextStyle(color: Colors.black, fontSize: 25),))
                         ),
                       );


                     },
                 )
               ],
             ); }),
    );
  }
}
