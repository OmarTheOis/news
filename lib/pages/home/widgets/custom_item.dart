import 'package:flutter/material.dart';
import 'package:newsapp/core/config/constants.dart';
import 'package:newsapp/model/category_model.dart';
import '../../../model/category_model.dart';
import '../../../model/category_model.dart';
typedef oncategoryclicked=void Function(CategoryModel)?;
class customitem extends StatelessWidget {
  final index;
  final CategoryModel categoryModel;
  final  oncategoryclicked;
   customitem({super.key,required this.index,
     required this.categoryModel,
     this.oncategoryclicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(oncategoryclicked==null)return;
          oncategoryclicked!(categoryModel);

      },
      child: Container(
        decoration: BoxDecoration(color: categoryModel.color,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight:index%2==0? Radius.circular(0):Radius.circular(25),
              bottomLeft: index%2==0? Radius.circular(25):Radius.circular(0),

            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(categoryModel.image,fit: BoxFit.cover,),
            Text(categoryModel.title,style: constants.theme.textTheme.bodyLarge,)
          ],
        ),
      ),
    );
  }
}
