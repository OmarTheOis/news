import 'package:flutter/material.dart';
import 'package:newsapp/core/widgets/custom_background.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/model/sources_model.dart';
import 'package:newsapp/network/apiManager.dart';

class SourcesView extends StatelessWidget {
  SourcesModel sourcesModel;

  SourcesView({super.key,required this.sourcesModel});


  @override
  Widget build(BuildContext context) {
    apimanager.fetchDataSources(sourcesModel.id);
    return custombackground(

    );
  }
}
