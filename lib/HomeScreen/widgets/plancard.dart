

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottery_project/constants/color_constants.dart';
// import 'package:lottery_project/constants/text_constants.dart';


// class PlanCard extends StatelessWidget {
//   final String title;
//   final String description;
//   final Color titleColor;
//   final Color descriptionColor;
//   final String planType;

//   const PlanCard({
//     super.key,
//     required this.description,
//     required this.planType,
//     required this.descriptionColor,
//     required this.title,
//     required this.titleColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 27.h, bottom: 15.h),
//       child: Container(
//         height: 60.h,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           image: const DecorationImage(
//             image: AssetImage('images/bgImage.jpg'),
//             fit: BoxFit.cover,
//             opacity: 0.1,
//           ),
//           border: Border.all(
//             color: ColorConstants.whiteColor,
//             width: 0.5,
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 10.w),
//           child: Row(
//             children: [
              
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: GoogleFonts.poppins(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 18,
//                       color: titleColor,
//                     ),
//                   ),
//                   Text(
//                     description,
//                     style: GoogleFonts.poppins(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 13,
//                       color: descriptionColor,
//                     ),
//                   ),
//                 ],
//               ),


//               const Spacer(),
//               if (planType== TextConstants.freePlan)
//                 Container(
//                   width: 75.w,
//                   height: 20.h,
//                   decoration: BoxDecoration(
//                     color: ColorConstants.greenClr,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: Center(
//                     child: Text(
//                       TextConstants.freePlan,
//                       style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w600,
//                         color: ColorConstants.whiteColor,
//                         fontSize: 13,
//                       ),
//                     ),
//                   ),
//                 )
//               else
//                 Column(
//                   children: [
//                     _getPlanImage(planType),
//                     SizedBox(width: 8.w),
//                     Text(
//                       planType,
//                       style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w400,
//                             color: planType == TextConstants.upgradePlan
//         ? ColorConstants.yellow
//         : ColorConstants.whiteColor,
//                         fontSize: 15,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(width: 15)
//             ],
//           ),
//         ),
//       ),
//     );
//   }


//   Widget _getPlanImage(String planType) {
//     switch (planType) {
//       case TextConstants.upgradePlan:
//         return Image.asset(
//           'images/upgrade.png',
//           width: 24,
//           height: 24,
        
//         );

//       case TextConstants.elitePlan:
//         return const Icon(Icons.workspace_premium, color: Colors.white, size: 24);

//       case TextConstants.preminumPlan:
//         return const Icon(Icons.star, color: Colors.white, size: 24);

//       case TextConstants.basicPlan:
//         return const Icon(Icons.check_circle, color: Colors.white, size: 24);

//       default:
//         return const Icon(Icons.lock_open, color: Colors.white, size: 24);
//     }
//   }
// }



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
          borderRadius: BorderRadius.circular(10.r),
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
            // Left side texts
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
                      fontSize: 18.sp,
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
                      fontSize: 13.sp,
                      color: descriptionColor,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 10.w),

           
            if (planType == TextConstants.freePlan)
              Container(
                width: 70,
                height: 22,
                decoration: BoxDecoration(
                  color: ColorConstants.greenClr,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Center(
                  child: Text(
                    TextConstants.freePlan,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.whiteColor,
                      fontSize: 12
                    ),
                  ),
                ),
              )
            else
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _getPlanImage(planType),
                  SizedBox(width: 8.w),
                  Text(
                    planType,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: planType == TextConstants.upgradePlan
                          ? ColorConstants.yellow
                          : ColorConstants.whiteColor,
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
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
          width: 22.w,
          height: 22.w,
        );

      case TextConstants.elitePlan:
        return Icon(Icons.workspace_premium,
            color: Colors.white, size: 22.sp);

      case TextConstants.preminumPlan:
        return Icon(Icons.star, color: Colors.white, size: 22.sp);

      case TextConstants.basicPlan:
        return Icon(Icons.check_circle, color: Colors.white, size: 22.sp);

      default:
        return Icon(Icons.lock_open, color: Colors.white, size: 22.sp);
    }
  }
}

