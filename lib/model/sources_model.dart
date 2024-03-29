import 'dart:ui';

class SourcesModel{
  final String id;
  final String name;


  SourcesModel({
    required this.id,
    required this.name
  });

  factory SourcesModel.fromJSON(Map<String,dynamic> json)=>SourcesModel(
    id: json["id"],
    name: json["name"],
  );
}
