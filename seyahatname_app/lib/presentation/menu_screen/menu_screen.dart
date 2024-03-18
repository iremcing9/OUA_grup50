import 'package:flutter/material.dart';
import 'package:seyahatname/core/app_export.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 68.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.v),
                      GestureDetector(
                          onTap: () {
                            home(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text("Geri Dön",
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 97.v),
                      GestureDetector(
                          onTap: () {
                            onTapFrameFive(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgHome,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 25.h),
                                    child: Text("Ana Sayfa",
                                        style: theme.textTheme.titleMedium))
                              ]))),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 26.h, top: 2.v),
                                child: Text("Profili Görüntüle",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 29.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEiPlus,
                                height: 42.adaptSize,
                                width: 42.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 17.h, top: 8.v, bottom: 11.v),
                                child: Text("Gönderi Ekle",
                                    style: theme.textTheme.titleMedium))
                          ]),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSearch,
                                height: 30.adaptSize,
                                width: 30.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 23.h, top: 5.v, bottom: 2.v),
                                child: Text("Ayarlar",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      Spacer(),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogoSeyahatname,
                          height: 85.v,
                          width: 140.h,
                          alignment: Alignment.center)
                    ]))));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  home(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapFrameFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
