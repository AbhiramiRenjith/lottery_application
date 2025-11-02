import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/History/widgets/prediction_card.dart';
import 'package:lottery_project/constants/color_constants.dart';

class AllHistoryTab extends StatelessWidget {
  const AllHistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      children: const [
        PredictionCard(
          lotteryName: "",
          date: "25-10-2025",
          prize: "1 st Prize",
          plan: "Plan 3",
          ticketNo: "WW 452696",
          status: "Drawn",
          result: "No Match",
          resultColor: ColorConstants.greyColor,
        ),
        PredictionCard(
          lotteryName: "Sthree Sakthi",
          date: "25-10-2025",
          prize: "2 nd Prize",
          plan: "Plan 3",
          ticketNo: "AA 785244",
          status: "Drawn",
          result: "No Match",
          resultColor: ColorConstants.greyColor,
        ),
        PredictionCard(
          lotteryName: "Karunya Plus",
          date: "25-10-2025",
          prize: "1 st Prize",
          plan: "Plan 3",
          ticketNo: "RR 597890",
          status: "Drawn",
          result: "Close Match",
          resultColor: Colors.green,
        ),
        PredictionCard(
          lotteryName: "Dhanalakshmi",
          date: "27-10-2025",
          prize: "7 th Prize",
          plan: "Plan 1",
          ticketNo: "RV 234567",
          status: "Pending",
          result: "",
        ),
        
      ],
    );
  }
}
