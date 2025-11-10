import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/upgradePlan/widget/subscription_slider.dart';
import 'package:lottery_project/upgradePlan/widget/whyupgrade.dart';

class UpgradePlan extends StatelessWidget {
  const UpgradePlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            //  height: 130.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
              ),
              gradient: LinearGradient(
                colors: [
                  ColorConstants.homeGradientLightBlue,
                  ColorConstants.homeGradientDarkBlue,
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 50),

                Row(
                  children: [
                    SizedBox(width: 10.w),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: ColorConstants.whiteColor,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 85.w,
                  height: 85.w,
                  decoration: BoxDecoration(
                    color: ColorConstants.lightBlue30,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.w,
                      right: 15.w,
                      top: 15.h,
                      bottom: 15.h,
                    ),
                    child: Image.asset(
                      'images/bhagyathara.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  TextConstants.subscriptions,
                  style: GoogleFonts.poppins(
                    color: ColorConstants.whiteColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.sp,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 16.w),
                child: Column(
                  children: [
                    Icon(
                      Icons.star_border_purple500_rounded,
                      color: ColorConstants.yellow,
                      size: 35.sp,
                    ),
                    Text(
                      TextConstants.upgradeRequired,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.blackColor,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      TextConstants.decription,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.greyBlackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    
                  

                     SubscriptionSlider(),
                   
                    
                    SizedBox(height: 20.h),

                    WhyUpgradeSection(),

                    SizedBox(height: 50.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
