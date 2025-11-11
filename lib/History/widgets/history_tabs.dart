import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/History/data/data.dart';
import 'package:lottery_project/History/widgets/prediction_card.dart';
import 'package:lottery_project/constants/color_constants.dart';


class HistoryTab extends StatelessWidget {
  final String type; 
  const HistoryTab({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    
    List<Map<String, dynamic>> filteredList = [];

    if (type == "all") {
      filteredList = historyList;
    } else if (type == "completed") {
      filteredList = historyList
          .where((item) => item["status"] == "Drawn")
          .toList();
    } else if (type == "pending") {
      filteredList = historyList
          .where((item) => item["status"] == "Pending")
          .toList();
    }

    return filteredList.isEmpty
        ? Center(
            child: Text(
              "No data found",
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
                color: ColorConstants.greyColor,
              ),
            ),
          )
        : ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              final item = filteredList[index];
              return PredictionCard(
                lotteryName: item["lotteryName"],
                date: item["date"],
                prize: item["prize"],
                plan: item["plan"],
                ticketNo: item["ticketNo"],
                status: item["status"],
                result: item["result"],
                resultColor: item["resultColor"],
              );
            },
          );
  }
}