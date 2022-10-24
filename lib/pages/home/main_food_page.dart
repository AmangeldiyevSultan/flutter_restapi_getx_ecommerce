import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myflutter_ecommerce/pages/home/food_page_body.dart';
import 'package:myflutter_ecommerce/utils/dimensions.dart';
import 'package:myflutter_ecommerce/widgets/big_text.dart';
import 'package:myflutter_ecommerce/widgets/small_text.dart';

import '../../utils/colors.dart';

class MainFootPage extends StatefulWidget {
  const MainFootPage({Key? key}) : super(key: key);

  @override
  State<MainFootPage> createState() => _MainFootPageState();
}

class _MainFootPageState extends State<MainFootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: "Kazakhstan",
                          color: AppColors.mainColor,
                        ),
                        Row(
                          children: [
                            SmallText(
                              text: "Astana",
                              color: Colors.black54,
                            ),
                            Icon(Icons.arrow_drop_down_rounded),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        width: Dimensions.widtht45,
                        height: Dimensions.height45,
                        child: Icon(
                          Icons.search,
                          size: Dimensions.iconSize24,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,
                        ),
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: FootPageBody())),
        ],
      ),
    );
  }
}
