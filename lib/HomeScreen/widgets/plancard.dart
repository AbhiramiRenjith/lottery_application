
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String description;
  final Color titleColor;
  final Color descriptionColor;
  final String planType;

  const PlanCard({
    super.key,
    required this.description,
    required this.planType,
    required this.descriptionColor,
    required this.title,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 27.h, bottom: 15.h),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('images/bgImage.jpg'),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
          border: Border.all(
            color: ColorConstants.whiteColor.withOpacity(0.6),
            width: 0.5.w,
          ),
        ),
        child: Row(
          children: [
           
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: titleColor,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: descriptionColor,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 10.w),

           
            if (planType == TextConstants.freePlan)
              Container(
  width: 60.w,
  height: 22.h,
  decoration: BoxDecoration(
    color: ColorConstants.greenClr,
    borderRadius: BorderRadius.circular(10.r),
  ),
  child: Center(
    child: FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        TextConstants.freePlan,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          color: ColorConstants.whiteColor,
          fontSize: 10.sp,
        ),
      ),
    ),
  ),
)

        
            else
            Column(
              children: [
                 _getPlanImage(planType),
                   Text(
                    planType,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: planType == TextConstants.upgradePlan
                          ? ColorConstants.yellow
                          : ColorConstants.whiteColor,
                      fontSize: 16.sp,
                    ),
                  ),


              ],
            )

          ],
        ),
      ),
    );
  }

  Widget _getPlanImage(String planType) {
    switch (planType) {
      case TextConstants.upgradePlan:
        return Image.asset(
          'images/upgrade.png',
          width: 25.w,
          height: 25.h,
          fit: BoxFit.contain,
        );


      case TextConstants.elitePlan:
        return Icon(Icons.workspace_premium,
            color: ColorConstants.whiteColor, size: 25.sp);

      case TextConstants.preminumPlan:
        return Icon(Icons.diamond_outlined, color: Colors.white, size:30.sp);

      case TextConstants.basicPlan:
        return Icon(Icons.auto_awesome, color: Colors.white, size: 25.sp);

      default:
        return Icon(Icons.lock_open, color: Colors.white, size: 25.sp);
    }
  }
}

