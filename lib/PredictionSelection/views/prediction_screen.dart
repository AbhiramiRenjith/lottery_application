
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/PredictionSelection/widgets/prediction_widget.dart';
import 'package:lottery_project/common_widgets/home_gradient_container.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';


class PredictionScreen extends StatelessWidget {
  const PredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: HomeGradientContainer(
        topContent: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 10.w,top: 40.h),
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
              width: 70.w,
              height: 65.w,
              decoration: BoxDecoration(
                color: ColorConstants.lightBlue20,
                borderRadius: BorderRadius.circular(8.r),

                border: Border.all(color: ColorConstants.whiteColor),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Image.asset('images/bhagyathara.png'),
                // child: Image.asset(lotteryImage as String, fit: BoxFit.contain),
              ),
            ),
            SizedBox(height: 15.h),

            Text(
              'Bhagyathra',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: ColorConstants.whiteColor,
                fontSize: 22.sp,
              ),
            ),

            Text(
              'First Prize',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
                color: ColorConstants.whiteColor,
              ),
            ),
            Text(
              '₹80 Lakh',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                color: ColorConstants.lightGreencolor,
              ),
            ),
            SizedBox(height: 25.sp),
          ],
        ),
        child: Padding(
          padding:  EdgeInsets.only(left: 10.w,right: 10.w,top: 25.h),
          child: Column(
            children: [
             
              Container(
                decoration: BoxDecoration(color: ColorConstants.whiteColor),
                child: Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            ColorConstants.homeGradientLightBlue,
                            ColorConstants.homeGradientDarkBlue,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8.r),
          
                        border: Border.all(color: ColorConstants.whiteColor),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6.w),
                        child: Image.asset('images/prediction.png'),
                        // child: Image.asset(lotteryImage as String, fit: BoxFit.contain),
                      ),
                    ),
                    SizedBox(width: 5.w),
          
                    Text(
                      TextConstants.aIpoweredPredictions,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.only(
                  left: 4.w,
                  right: 4.w,
                  top: 4.h,
                  bottom: 4.h,
                ),
                height: 35,
          
                decoration: BoxDecoration(
                  color: ColorConstants.containerBgGrey,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: TabBar(
                  labelColor: ColorConstants.blackColor,
                  unselectedLabelColor: ColorConstants.blackColor,
                  labelStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  ),
          
                  indicator: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  dividerColor: ColorConstants.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(text: "PLAN 1"),
                    Tab(text: "PLAN 2"),
                    Tab(text: "PLAN 3"),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: 800.h,
                child: const TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    PredictionWidget(),
                    PredictionWidget(),
                    PredictionWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

