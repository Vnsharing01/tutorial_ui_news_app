import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tutorial_ui_news_app/constant/data.dart';
import 'package:tutorial_ui_news_app/model/category_model.dart';

class CategorySelecterView extends StatefulWidget {
  CategorySelecterView({Key? key}) : super(key: key);

  @override
  _CategorySelecterViewState createState() => _CategorySelecterViewState();
}

class _CategorySelecterViewState extends State<CategorySelecterView> {
  final List<CategoryModel> categories = StaticValues().categories;
  int selectdIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          
          children: List.generate(categories.length, (index) {
            CategoryModel model = categories[index];
            bool isSelected = selectdIndex == index;
            return GestureDetector(
              onTap: (){
                setState(() {
                  this.selectdIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 150),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  model.name,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
