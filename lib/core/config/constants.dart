import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/main.dart';

class constants{
  static  var mediaquery=
  MediaQuery.of(navigatorkey.currentState!.context).size;
  static  var theme=Theme.of(navigatorkey.currentState!.context);
  static const String apikey="a6ce567696da4b9fa78bf139d9ea1e0e";
  static const String baseurl="newsapi.org";

}