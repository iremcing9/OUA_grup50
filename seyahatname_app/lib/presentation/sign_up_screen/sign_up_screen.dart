import 'package:seyahatname/widgets/custom_text_form_field.dart';
import 'package:seyahatname/widgets/custom_search_view.dart';
import 'package:seyahatname/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:seyahatname/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController lockController = TextEditingController();

  TextEditingController kullanCAdTwoController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 15.v),
                child: Column(children: [
                  Spacer(),
                  Text("Kayıt Olun", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 41.v),
                  _buildLock(context),
                  SizedBox(height: 26.v),
                  _buildKullanCAdTwo(context),
                  SizedBox(height: 26.v),
                  CustomSearchView(
                      controller: searchController, hintText: "Şifre"),
                  SizedBox(height: 27.v),
                  _buildSearch(context),
                  SizedBox(height: 27.v),
                  _buildKaytOlun(context),
                  SizedBox(height: 85.v),
                  Text("Halihazırda hesabınız var mı?",
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 13.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtGiriYapN(context);
                      },
                      child: Text("Giriş Yapın",
                          style: CustomTextStyles.labelLargeBold)),
                  SizedBox(height: 59.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogoSeyahatname,
                      height: 63.v,
                      width: 96.h)
                ]))));
  }

  /// Section Widget
  Widget _buildLock(BuildContext context) {
    return CustomTextFormField(
        controller: lockController,
        hintText: "e-posta adresi",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(23.h, 8.v, 16.h, 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLockBlack900,
                height: 16.v,
                width: 20.h)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v));
  }

  /// Section Widget
  Widget _buildKullanCAdTwo(BuildContext context) {
    return CustomTextFormField(
        controller: kullanCAdTwoController,
        hintText: "Kullanıcı Adı",
        hintStyle: CustomTextStyles.bodySmall11,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(20.h, 9.v, 14.h, 9.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 38.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        filled: false);
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return CustomTextFormField(
        controller: searchController1,
        hintText: "Şifre Tekrar ",
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(25.h, 10.v, 12.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgSearchBlack900,
                height: 12.v,
                width: 22.h)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v));
  }

  /// Section Widget
  Widget _buildKaytOlun(BuildContext context) {
    return CustomElevatedButton(width: 140.h, text: "Kayıt Olun");
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtGiriYapN(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
