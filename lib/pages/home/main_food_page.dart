import 'package:e_mart/pages/home/food_page_body.dart';
import 'package:e_mart/utils/colors.dart';
import 'package:e_mart/widgets/big_text.dart';
import 'package:e_mart/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/utils/dimensions.dart';

import 'food_page_body.dart';



class MainFoodPage extends StatefulWidget {
  MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height45),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "India", color: Appcolors.mainColor),
                      Row(
                        children: [
                          SmallText(
                            text: "City",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: Appcolors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}


