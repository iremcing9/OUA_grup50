import 'package:flutter/material.dart';
import 'package:seyahatname/core/app_export.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.lightGreen20001,
            body: GestureDetector(
                onTap: () {
                  loginscreen(context);
                },
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 54.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLogoSeyahatname,
                              height: 160.v,
                              width: 252.h,
                              onTap: () {
                                login(context);
                              }),
                          SizedBox(height: 24.v),
                          Container(
                              decoration: AppDecoration.outlineBlack,
                              child: Text("Seyahatname",
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 2.v)
                        ])))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  loginscreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  login(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
