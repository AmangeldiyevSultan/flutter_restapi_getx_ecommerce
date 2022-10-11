import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myflutter_ecommerce/utils/colors.dart';
import 'package:myflutter_ecommerce/widgets/big_text.dart';
import 'package:myflutter_ecommerce/widgets/icon_and_text_widget.dart';
import 'package:myflutter_ecommerce/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';

class FootPageBody extends StatefulWidget {
  const FootPageBody({Key? key}) : super(key: key);

  @override
  State<FootPageBody> createState() => _FootPageBodyState();
}

class _FootPageBodyState extends State<FootPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          // color: Colors.redAccent,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF69c5df),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/food0.jpg"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    ),
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Chinese Side"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: AppColors.mainColor,
                                      size: 15,
                                    )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(
                            text: "4.5",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "1287"),
                          SizedBox(
                            width: 5,
                          ),
                          SmallText(text: "comments"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          IconAndTextWidget(
                              icon: Icons.circle_sharp,
                              text: "Normal",
                              iconColor: AppColors.iconColor1),
                          SizedBox(
                            width: 20,
                          ),
                          IconAndTextWidget(
                              icon: Icons.location_on,
                              text: "1.7km",
                              iconColor: AppColors.mainColor),
                          SizedBox(
                            width: 20,
                          ),
                          IconAndTextWidget(
                              icon: Icons.access_time_rounded,
                              text: "32min",
                              iconColor: AppColors.iconColor2)
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
