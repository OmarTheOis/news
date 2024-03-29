import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/core/config/constants.dart';
import 'package:newsapp/model/articel_model.dart';
import 'package:newsapp/model/category_model.dart';

import '../model/category_model.dart';
import '../model/sources_model.dart';

class apimanager {
  static Future<List<SourcesModel>> fetchDataSources(String? id) async {
    var url = Uri.http(constants.baseurl,
        "/v2/top-headlines/sources",
        {"apiKey": constants.apikey, "category": id});
    final response = await http.get(url);
    List<SourcesModel> result = [];
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print(response.statusCode);
      List sources = data["sources"];
      for (var element in sources) {
        result.add(SourcesModel.fromJSON(element));
      }

      return result;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Sources');
    }
  }

  static Future<List<ArticelsModel>> fetchDataArticels(String? id) async {
    var url = Uri.https(constants.baseurl, "/v2/everything", {
      "apiKey": constants.apikey,
      "sources": id,
    });
    var response = await http.get(url);
    List<ArticelsModel> result = [];
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List articels = data["articles"];
      print(data["articles"]);
      for (var element in articels) {
        result.add(ArticelsModel.fromJson(element));
      }
      return result;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load articels');
    }
  }
}
