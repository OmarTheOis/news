import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/config/page_route_name.dart';
import 'package:newsapp/pages/home/pages/homescreen.dart';
import 'package:newsapp/pages/settings/pages/settingsscreen.dart';
import 'package:newsapp/pages/splash/pages/splash.dart';

class Routes{
  static Route <dynamic> ?onGenrateRoutes(RouteSettings settings){
   switch (settings.name){
     case PageRouteName.initial:
       return MaterialPageRoute(builder: (Context)=>const splashscreen(),
       settings: settings,
       );
     case PageRouteName.homescreen:
       return MaterialPageRoute(builder: (Context)=>const homescreen(),
         settings: settings,
       );
     case PageRouteName.setting:
       return MaterialPageRoute(builder: (Context)=>const settingsscreen(),
         settings: settings,
       );
   }
  }
}