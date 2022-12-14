import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_ecommerce/utils/colors.dart';
import 'package:myflutter_ecommerce/utils/dimensions.dart';
import 'package:myflutter_ecommerce/widgets/account_widget.dart';
import 'package:myflutter_ecommerce/widgets/app_icon.dart';
import 'package:myflutter_ecommerce/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Center(
          child: BigText(
            text: "Profile",
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: Dimensions.height20,
        ),
        child: Column(
          children: [
            ///profile icon
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              iconSize: Dimensions.iconSize15 * 5,
              size: Dimensions.height30 * 4,
            ),
           Expanded(
             child: SingleChildScrollView( 
               child: Column(
                 children: [
                   ///name
                   SizedBox(height: Dimensions.height30,),
                   AccountWidget(
                       appIcon: AppIcon(
                         icon: Icons.person,
                         backgroundColor: AppColors.mainColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10 * 5 / 2,
                         size: Dimensions.height10 * 5,
                       ),
                       bigText: BigText(
                         text: "Ahmed",
                       )),
                   ///phone
                   SizedBox(height: Dimensions.height20,),
                   AccountWidget(
                       appIcon: AppIcon(
                         icon: Icons.phone,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10 * 5 / 2,
                         size: Dimensions.height10 * 5,
                       ),
                       bigText: BigText(
                         text: "13761849016",
                       )),
                   ///email
                   SizedBox(height: Dimensions.height20,),
                   AccountWidget(
                       appIcon: AppIcon(
                         icon: Icons.email,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10 * 5 / 2,
                         size: Dimensions.height10 * 5,
                       ),
                       bigText: BigText(
                         text: "sultanamangeldiev2003@mail.ru",
                       )),
                   ///address
                   SizedBox(height: Dimensions.height20,),
                   AccountWidget(
                       appIcon: AppIcon(
                         icon: Icons.location_on,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10 * 5 / 2,
                         size: Dimensions.height10 * 5,
                       ),
                       bigText: BigText(
                         text: "Fill in your address",
                       )),
                   ///message
                   SizedBox(height: Dimensions.height20,),
                   AccountWidget(
                       appIcon: AppIcon(
                         icon: Icons.message,
                         backgroundColor: Colors.redAccent,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10 * 5 / 2,
                         size: Dimensions.height10 * 5,
                       ),
                       bigText: BigText(
                         text: "Ahmed",
                       )),
                   SizedBox(height: Dimensions.height20,),

                 ],
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
