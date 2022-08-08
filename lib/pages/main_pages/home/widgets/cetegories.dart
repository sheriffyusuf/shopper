import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopper/pages/main_pages/home/models/category_model.dart';
import 'package:flutter_shopper/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key, required this.model}) : super(key: key);
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10);
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: kAnotherGray, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                model.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              20.width,
              // Image border

              SizedBox(
                height: 70,
                width: 70,
                child: Container(
                  padding: EdgeInsets.all(10), // Border width
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: borderRadius),
                  child: ClipRRect(
                    borderRadius: borderRadius,
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(90), // Image radius
                      child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Container(
                            color: kAppColor,
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
