import 'package:newsapp/model/sources_model.dart';

class ArticelsModel {
  final SourcesModel source;
  String id;
  String title;
  String description;
  String image;
  String date;

  ArticelsModel(
      {required this.source,
      required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.date});

  factory ArticelsModel.fromJson(Map<String, dynamic> json) => ArticelsModel(
      source: SourcesModel.fromJSON(json["source"]),
      id: json["id"]??" ",
      title: json["title"]?? " ",
      description: json["description"]?? " ",
      image: json["urlToImage"]?? " ",
      date: json["publishedAt"]?? " ");
}
