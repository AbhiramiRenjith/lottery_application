
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/History/widgets/history_tabs.dart';
import 'package:lottery_project/common_widgets/home_gradient_container.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: HomeGradientContainer(
        topContent: Padding(
          padding:  EdgeInsets.symmetric(vertical: 100.h,horizontal: 20.w),
          child: Row(
            children: [
            
              Text(
                TextConstants.predictionHistory,
                style: GoogleFonts.poppins(
                  color: ColorConstants.whiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 30.sp,
                ),
              ),
            ],
          ),
        ),
       
          child: Column(
            children: [
              SizedBox(height: 25.h),
              Container(
                height: 38.h,
                padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 4.h,bottom: 4.h),
                decoration: BoxDecoration(
                  color: ColorConstants.containerBgGrey,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: TabBar(
                  labelColor: ColorConstants.blackColor,
                  unselectedLabelColor: ColorConstants.blackColor,
                  labelStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 11.sp,
                  ),
                 
                  indicator: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  dividerColor: ColorConstants.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(text: "All"),
                    Tab(text: "Completed"),
                    Tab(text: "Pending"),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              
              SizedBox(
                height: 520.h,
                child: const TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: [
                     HistoryTab(type: "all"),
                     HistoryTab(type: "completed"),
                    HistoryTab(type: "pending"),

                   
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    
  }
}




