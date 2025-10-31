import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class HomeGradientContainer extends StatelessWidget {
  final String userName;
  final Widget plan;
  final Widget child;

  const HomeGradientContainer({
    super.key,
    required this.userName,
    required this.plan,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorConstants.homeGradientLightBlue,
              ColorConstants.homeGradientDarkBlue,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.h, left: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            TextConstants.homeTitle,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp,
                              color: ColorConstants.whiteColor,
                            ),
                          ),
                          Text(
                            userName,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 22.sp,
                              color: ColorConstants.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, right: 20.w),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 35.w,
                            height: 35.w,
                            decoration: BoxDecoration(
                              color: ColorConstants.whiteColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.notifications_none,
                              size: 22.sp,
                              color: ColorConstants.blackColor,
                            ),
                          ),

                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 18.w, top: 5.h),
                              child: Container(
                                height: 8.w,
                                width: 8.w,
                                decoration: BoxDecoration(
                                  color: ColorConstants.notification,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                   
                  ),
                  child: plan,
                ),
                SizedBox(height: 15),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: ColorConstants.whiteColor),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
