import 'dart:convert';

import 'package:newsapp/model/sources_model.dart';

class ArticelsModel {
   SourcesModel source;
   String id;
   String title;
   String description;
   String image;
   String date;
   String url;

  ArticelsModel(
      {required this.source,
      required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.date,
       required this.url,
      });

  factory ArticelsModel.fromJson(Map< String, dynamic> json) => ArticelsModel(
      source: SourcesModel.fromJSON(json["source"]),
      id: json["id"]??" ",
      title: json["title"]?? " ",
      description: json["description"]?? " ",
      image: json["urlToImage"]?? " ",
      date: json["publishedAt"]?? " ",
      url:  json["url"]??""
  );

}
