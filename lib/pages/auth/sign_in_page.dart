import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myflutter_ecommerce/pages/auth/sign_up_page.dart';
import 'package:myflutter_ecommerce/utils/colors.dart';
import 'package:myflutter_ecommerce/utils/dimensions.dart';
import 'package:myflutter_ecommerce/widgets/app_text_field.dart';
import 'package:myflutter_ecommerce/widgets/big_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            //app-logo
            Container(
              height: Dimensions.screenHeight * 0.25,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: Dimensions.radius30 * 4 - Dimensions.radius20/2,
                  backgroundImage: AssetImage("assets/image/logo_1.jpg"),
                ),
              ),
            ),
            //welcome
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: Dimensions.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                        fontSize: Dimensions.font20 * 3 + Dimensions.font20 / 2,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign into your account",
                    style: TextStyle(
                        fontSize: Dimensions.font20,
                      color: Colors.grey[500]
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20,),
            //your email
            AppTextField(
                color: AppColors.mainColor,
                textEditingController: emailController,
                icon: Icons.email,
                hintText: "Email"),
            SizedBox(
              height: Dimensions.height20,
            ),
            //your password
            AppTextField(
                color: AppColors.mainColor,
                textEditingController: passwordController,
                icon: Icons.password_sharp,
                hintText: "Password"),
            SizedBox(
              height: Dimensions.height20,
            ),
            //tag line
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                    text: TextSpan(
                        text: "Sign into your account",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: Dimensions.font20))),
                SizedBox(width: Dimensions.width20,)
              ],
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            //sign in button
            Container(
              width: Dimensions.screenWidth / 2,
              height: Dimensions.screenHeight / 13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: AppColors.mainColor,
              ),
              child: Center(
                child: BigText(
                  text: "Sign In",
                  size: Dimensions.font20 + Dimensions.font20 / 2,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            //sign up options
            RichText(
                text: TextSpan(
                    text: "Don\'t have an account? ",
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font20),
                    children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage(), transition: Transition.fade),
                    text: "Create",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainBlackColor, fontSize: Dimensions.font20)),
                    ])),
          ],
        ),
      ),
    );
  }
}
