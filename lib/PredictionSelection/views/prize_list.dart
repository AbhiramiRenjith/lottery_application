import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/PredictionSelection/widgets/available_prizes.dart';
import 'package:lottery_project/common_widgets/home_gradient_container.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class PrizeListScreen extends StatelessWidget {
  final String? lotteryName;
  final String? lotteryImage;

  const PrizeListScreen({super.key, this.lotteryName, this.lotteryImage});

  @override
  Widget build(BuildContext context) {
    return HomeGradientContainer(
      topContent: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 40.h),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: ColorConstants.whiteColor,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 80.w,
            height: 75.w,
            decoration: BoxDecoration(
              color: ColorConstants.lightBlue20,
              // gradient: LinearGradient(
              //   colors: [
              //     ColorConstants.homeGradientLightBlue,
              //     ColorConstants.homeGradientDarkBlue,
              //   ],
              // ),
              // borderRadius: BorderRadius.circular(8.r),
              shape: BoxShape.circle,
              // border: Border.all(color: ColorConstants.whiteColor),
            ),
            child: Padding(
              padding: EdgeInsets.all(15.w),
              //  child: Image.asset('images/bhagyathara.png',),
              child: Image.asset(lotteryImage as String, fit: BoxFit.contain),
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            lotteryName!,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: ColorConstants.whiteColor,
              fontSize: 25.sp,
            ),
          ),
          Text(
            TextConstants.selectaPrize,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              color: ColorConstants.whiteColor,
            ),
          ),
          SizedBox(height: 25.sp),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 10.w),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: 2.w, color: ColorConstants.blue),
                  SizedBox(width: 5.w),
                  Text(
                    TextConstants.availableCategory,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.sp,
                      color: ColorConstants.blackColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
      
          Padding(
            padding: EdgeInsets.only(left: 15.w,top: 20.h),
            child: AvailablePrizes(lotteryImage: lotteryImage),
          ),
        ],
      ),
    );
  }
}
