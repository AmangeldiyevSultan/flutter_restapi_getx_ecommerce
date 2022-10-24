import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // screenHeigh divided by container, radius, text or another one, height (737.4545) and width (392.7272);

  //dynamic height of containers
  static double pageViewContainer = screenHeight / 3.35;
  static double mainPageViewContainer = screenHeight / 2.3045;
  static double pageViewTextContainer = screenHeight / 6.145;

  //dynamic height padding and margin
  static double height10 = screenHeight / 73.7;
  static double height15 = screenHeight / 49.16;
  static double height20 = screenHeight / 36.87;
  static double height30 = screenHeight / 24.58;
  static double height45 = screenHeight / 16.38;
  static double height3 = screenHeight / 245.8181;
  static double height2 = screenHeight / 368.72725;

  //dynamic width padding and margin
  static double width10 = screenWidth / 39.27;
  static double width15 = screenWidth / 26.18;
  static double width20 = screenWidth / 19.63;
  static double width30 = screenWidth / 13.09;
  static double widtht45 = screenWidth / 8.7272;

  //dynamic size font
  static double font16 = screenHeight / 46.0909062;
  static double font20 = screenHeight / 36.87;
  static double font26 = screenHeight / 28.3636346;

  //dynamic height radius
  static double radius20 = screenHeight / 36.87;
  static double radius15 = screenHeight / 49.16;
  static double radius30 = screenHeight / 24.58;

  //dynamic size icon
  static double iconSize24 = screenHeight / 30.7272;
  static double iconSize15 = screenHeight / 49.16;
  static double iconSize16 = screenHeight / 46.0909062;

  // list View size
  static double listViewImgSize120 = screenWidth / 3.27272667;
  static double listViewTextConSize100 = screenWidth / 3.927272;

  //popular food
  static double popularFoodImgSize350 = screenHeight / 2.10701286;

  //bottom height
  static double bottomHeightBar120 = screenHeight / 6.14545417;
}
