import 'package:seyahatname/widgets/custom_text_form_field.dart';
import 'package:seyahatname/widgets/custom_search_view.dart';
import 'package:seyahatname/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:seyahatname/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController lockController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 15.v),
                child: Column(children: [
                  Spacer(flex: 59),
                  Text("Giriş Yapın", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 50.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Lütfen aşağıdakileri doldurunuz.",
                              style: CustomTextStyles.bodySmall11))),
                  SizedBox(height: 14.v),
                  CustomTextFormField(
                      controller: lockController,
                      hintText: "Kullanıcı Adı",
                      hintStyle: CustomTextStyles.bodySmall11,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(20.h, 8.v, 14.h, 8.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgLock,
                              height: 16.adaptSize,
                              width: 16.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 33.v)),
                  SizedBox(height: 19.v),
                  CustomSearchView(
                      controller: searchController, hintText: "Şifre"),
                  SizedBox(height: 23.v),
                  CustomElevatedButton(
                      width: 140.h,
                      text: "Giriş Yapın",
                      onPressed: () {
                        homescreenn(context);
                      }),
                  SizedBox(height: 64.v),
                  Text("Henüz hesabınız yok mu?",
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 14.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtKayTOlun(context);
                      },
                      child: Text("Kayıt Olun",
                          style: CustomTextStyles.labelLargeBold)),
                  Spacer(flex: 40),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogoSeyahatname,
                      height: 63.v,
                      width: 96.h)
                ]))));
  }

  /// Navigates to the menuScreen when the action is triggered.
  homescreenn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtKayTOlun(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
