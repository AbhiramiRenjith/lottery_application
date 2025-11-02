import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/History/widgets/prediction_card.dart';

class PendingHistoryTab extends StatelessWidget {
  const PendingHistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      children: const [
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
