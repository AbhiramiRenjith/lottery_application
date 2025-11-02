
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/History/widgets/all_history_tab.dart';
import 'package:lottery_project/History/widgets/complete_history_tab.dart';
import 'package:lottery_project/History/widgets/pending_history_tab.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back,
                  color: ColorConstants.whiteColor,
                  size: 28,
                ),
              ),
              Text(
                TextConstants.predictionHistory,
                style: GoogleFonts.poppins(
                  color: ColorConstants.whiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 28.sp,
                ),
              ),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 35.h,
              margin: EdgeInsets.symmetric(vertical: 10.h),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: ColorConstants.containerBgGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TabBar(
                labelColor: ColorConstants.blackColor,
                unselectedLabelColor: ColorConstants.blackColor,
                labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                ),
               
                indicator: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                dividerColor: ColorConstants.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(text: "ALL"),
                  Tab(text: "Completed"),
                  Tab(text: "Pending"),
                ],
              ),
            ),
            SizedBox(height: 10),
            
            SizedBox(
              height: 520.h,
              child: const TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                   AllHistoryTab(),
                  CompletedHistoryTab(),
                  PendingHistoryTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



