import 'package:flutter/material.dart';
import 'package:newsapp/core/config/constants.dart';
import 'package:newsapp/core/widgets/category_view.dart';
import 'package:newsapp/main.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/network/apiManager.dart';
import 'package:newsapp/pages/home/widgets/custom_drawer.dart';
import 'package:newsapp/pages/home/widgets/custom_item.dart';
import '../../../core/widgets/custom_background.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final List<CategoryModel> categorieslist = [
    CategoryModel(
        id: "Sports",
        title: "Sports",
        image: "assets/images/ball.png",
        color: Color(0XFFC91C22)),
    CategoryModel(
        id: "general",
        title: "politics",
        image: "assets/images/Politics.png",
        color: Color(0XFF003E90)),
    CategoryModel(
        id: "Health",
        title: "Health",
        image: "assets/images/health.png",
        color: Color(0XFFED1E79)),
    CategoryModel(
        id: "business",
        title: "Business",
        image: "assets/images/bussines.png",
        color: Color(0XFFCF7E48)),
    CategoryModel(
        id: "enviroment",
        title: "Enviroment",
        image: "assets/images/environment.png",
        color: Color(0XFF4882CF)),
    CategoryModel(
        id: "Science",
        title: "Science",
        image: "assets/images/science.png",
        color: Color(0XFFF2D352)),
  ];
  CategoryModel? selectcategory;
  @override
  Widget build(BuildContext context) {

    void oncatgoryclicked(CategoryModel categorymodel) {

      selectcategory = categorymodel;
      apimanager.fetchDataArticels("bbc-sport");
      setState(() {});
    }

    void ontapcategoryclicked() {
      setState(() {
        selectcategory = null;
      });
      navigatorkey.currentState!.pop();
    }

    return custombackground(
      widget: Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          title: Text(
            selectcategory == null ? "News App" : selectcategory!.title,
            style: constants.theme.textTheme.titleLarge,
          ),
        ),
        drawer: drawer(
          ontap: ontapcategoryclicked,
        ),
        body: selectcategory == null
            ? Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                    
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 50),
                      child: Text(
                        "Pick your category of interest",
                        style: constants.theme.textTheme.titleLarge?.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            childAspectRatio: 6 / 5,
                            crossAxisCount: 2),
                        itemBuilder: (context, index) => customitem(
                          index: index,
                          categoryModel: categorieslist[index],
                          oncategoryclicked: oncatgoryclicked,
                        ),
                        itemCount: 6,
                      ),
                    )
                  ],
                ),
              )
            : CategoryView(categoryModel: selectcategory!),
      ),
    );
  }
}
