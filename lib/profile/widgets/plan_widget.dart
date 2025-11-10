import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';

import 'package:lottery_project/constants/text_constants.dart';

class PlanWidget extends StatelessWidget {
  const PlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        // height: 89.h,
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: ColorConstants.greyBlackColor,
              blurRadius: 5

            )
          ]
        ),

        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/upgrade.png',
                        width: 20.w,
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        TextConstants.currentPlan,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: ColorConstants.blackColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 55.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: ColorConstants.lightGreen,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Text(
                      TextConstants.active,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp,
                        color: ColorConstants.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Text(
                TextConstants.planOne,
                style: GoogleFonts.poppins(color: ColorConstants.greenClr),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/upgradePlan');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.transparent,
                  shadowColor: ColorConstants.transparent,
                  side: BorderSide(
                    color: ColorConstants.homeGradientLightBlue,
                    width: 1.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                  minimumSize: Size(double.infinity, 25.h),
                ),
                child: Text(
                  TextConstants.upgradePlan,
                  style: GoogleFonts.poppins(
                    color: ColorConstants.blue,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    
  }
}
