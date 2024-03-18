import 'package:seyahatname/widgets/app_bar/custom_app_bar.dart';
import 'package:seyahatname/widgets/app_bar/appbar_leading_image.dart';
import 'package:seyahatname/widgets/app_bar/appbar_title.dart';
import 'package:seyahatname/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:seyahatname/core/app_export.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 28.v),
                    child: Column(children: [
                      _buildGNderiAblonu(context),
                      SizedBox(height: 35.v),
                      _buildGNderiAblonu1(context),
                      SizedBox(height: 34.v),
                      _buildThirteen(context),
                      SizedBox(height: 3.v),
                      Container(
                          width: 322.h,
                          margin: EdgeInsets.only(left: 16.h, right: 22.h),
                          child: Text("Mutlaka uğranmalı",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelLarge)),
                      _buildGNderiAblonu2(context),
                      _buildGNderiAblonu3(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 16.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapMegaphone(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Seyahatname"));
  }

  /// Section Widget
  Widget _buildGNderiAblonu(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse1,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(20.h)),
                Padding(
                    padding: EdgeInsets.only(left: 9.h, bottom: 5.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fatih Fazlıoğlu",
                              style: theme.textTheme.labelLarge),
                          SizedBox(height: 3.v),
                          Text("Kadıköy/İst", style: theme.textTheme.bodySmall)
                        ])),
                Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Column(children: [
                      Text("Nappo Pizza", style: theme.textTheme.labelLarge),
                      SizedBox(height: 4.v),
                      _buildFrame(context,
                          signal: ImageConstant.imgSignalWhiteA700,
                          signal1: ImageConstant.imgSignalWhiteA700)
                    ]))
              ])),
          SizedBox(height: 6.v),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle17,
              height: 177.v,
              width: 322.h,
              radius: BorderRadius.circular(6.h)),
          SizedBox(height: 2.v),
          Text("Güzeldi.", style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildGNderiAblonu1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 22.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse140x40,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(20.h)),
                Padding(
                    padding: EdgeInsets.only(left: 9.h, bottom: 5.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ada Yerli", style: theme.textTheme.labelLarge),
                          SizedBox(height: 4.v),
                          Text("Beşiktaş/İst", style: theme.textTheme.bodySmall)
                        ])),
                Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 22.h),
                              child: Text("Karadeniz Döner",
                                  style: theme.textTheme.labelLarge))),
                      SizedBox(height: 5.v),
                      CustomRatingBar(initialRating: 0)
                    ]))
              ])),
          SizedBox(height: 6.v),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle17177x322,
              height: 177.v,
              width: 322.h,
              radius: BorderRadius.circular(6.h)),
          SizedBox(height: 3.v),
          Text("Şiddetli tavsiyemdir.", style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return SizedBox(
        height: 223.v,
        width: 359.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle171,
              height: 177.v,
              width: 322.h,
              radius: BorderRadius.circular(6.h),
              alignment: Alignment.bottomCenter),
          Opacity(
              opacity: 0.5,
              child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle7,
                  height: 40.v,
                  width: 359.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 42.v))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h, right: 29.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse11,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  radius: BorderRadius.circular(20.h)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 9.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Eren Yıldız",
                                            style: theme.textTheme.labelLarge),
                                        SizedBox(height: 4.v),
                                        Text("Ataşehir/İst",
                                            style: theme.textTheme.bodySmall)
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Column(children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("Kavurmacı Efe Kemal",
                                            style: theme.textTheme.labelLarge)),
                                    SizedBox(height: 5.v),
                                    CustomRatingBar(initialRating: 0)
                                  ]))
                            ])),
                    SizedBox(height: 96.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgHome,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 13.v)),
                                  Spacer(flex: 47),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEiPlus,
                                      height: 50.adaptSize,
                                      width: 50.adaptSize),
                                  Spacer(flex: 52),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLock,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 13.v))
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildGNderiAblonu2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 17.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse12,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(20.h)),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 35.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Recep Çorlak",
                                            style: theme.textTheme.labelLarge),
                                        Text("Zabata Burger",
                                            style: theme.textTheme.labelLarge)
                                      ])),
                              SizedBox(height: 6.v),
                              _buildSeventeen(context,
                                  lEL: "Kadıköy/İst",
                                  signal: ImageConstant.imgSignal)
                            ])))
              ])),
          SizedBox(height: 6.v),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle172,
              height: 177.v,
              width: 322.h,
              radius: BorderRadius.circular(6.h)),
          SizedBox(height: 3.v),
          SizedBox(
              width: 322.h,
              child: Text("Yediğim en iyi burgerdi..",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildGNderiAblonu3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 17.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse13,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(20.h)),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 42.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Efe Güneş",
                                            style: theme.textTheme.labelLarge),
                                        Text("Vefa Bozacısı",
                                            style: theme.textTheme.labelLarge)
                                      ])),
                              SizedBox(height: 6.v),
                              _buildSeventeen(context,
                                  lEL: "Fatih/İstanbul",
                                  signal: ImageConstant.imgSignalWhiteA700)
                            ])))
              ])),
          SizedBox(height: 6.v),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle173,
              height: 177.v,
              width: 322.h,
              radius: BorderRadius.circular(6.h)),
          SizedBox(height: 3.v),
          SizedBox(
              width: 322.h,
              child: Text("Otantik havasına bayıldım.",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge))
        ]));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String signal,
    required String signal1,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 3.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSignal,
              height: 14.adaptSize,
              width: 14.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgSignal,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(left: 3.h)),
          CustomImageView(
              imagePath: ImageConstant.imgSignal,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(left: 3.h)),
          CustomImageView(
              imagePath: signal,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(left: 3.h)),
          CustomImageView(
              imagePath: signal1,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(left: 3.h))
        ]));
  }

  /// Common widget
  Widget _buildSeventeen(
    BuildContext context, {
    required String lEL,
    required String signal,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: Text(lEL,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.black900))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 3.v),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize),
                CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 3.h)),
                CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 3.h)),
                CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 3.h)),
                CustomImageView(
                    imagePath: signal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 3.h))
              ]))
        ]);
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapMegaphone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
