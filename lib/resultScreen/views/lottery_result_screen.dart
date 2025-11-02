
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/common_widgets/home_gradient_container.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/ResultScreen/widget/consolation_prize.dart';
import 'package:lottery_project/ResultScreen/widget/lottery_datepicker_field.dart';
import 'package:lottery_project/ResultScreen/widget/lottery_number_drodown_field.dart';
import 'package:lottery_project/ResultScreen/widget/price_box.dart';
import 'package:lottery_project/dummyData/dummy_data.dart';

class LotteryResultScreen extends StatefulWidget {
  const LotteryResultScreen({super.key});

  @override
  State<LotteryResultScreen> createState() => _LotteryResultScreenState();
}

class _LotteryResultScreenState extends State<LotteryResultScreen> {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  bool showPrizeList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeGradientContainer(
        topContent: Padding(
          padding: EdgeInsets.only(top: 35.h, left: 20.w, right: 20.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    TextConstants.lotteryResults,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.sp,
                      color: ColorConstants.whiteColor,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.qr_code_scanner,
                    color: ColorConstants.whiteColor,
                  ),
                ],
              ),
              SizedBox(height: 15.h),

              
              LotteryNumberDropdownField(controller: numberController),
              SizedBox(height: 10.h),

             
              LotteryDatePickerField(controller: dateController),
              SizedBox(height: 15.h),

             
              ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(5),
                  shadowColor:
                      WidgetStateProperty.all(ColorConstants.blackColor),
                  backgroundColor:
                      WidgetStateProperty.all(ColorConstants.whiteColor),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  minimumSize:
                      WidgetStateProperty.all( Size(double.infinity, 45.h)),
                ),
                onPressed: () {
                  setState(() {
                    if (numberController.text.isNotEmpty &&
                        dateController.text.isNotEmpty) {
                      showPrizeList = true;
                    } else {
                      showPrizeList = false;
                    }
                  });
                },
                child: Text(
                  TextConstants.check,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.blueColor,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),

        
        child: Padding(
          padding:  EdgeInsets.only(top: 30,left: 15.w,right: 15.w),
          child:showPrizeList
              ? ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    ...prizeList.map(
                      (data) => PriceBox(
                        title: data['title']!,
                        prize: data['prize']!,
                        number: data['number']!,
                        place: data['place']!,
                      ),
                    ),
                    const ConsolationPrize(),
                  ],
                )
              : Center(
                  child: Image.asset(
                    'images/banner.png',
                    height: 250.h,
                    width: 500.w,
                    
                   
                    fit: BoxFit.cover,
                  ),
                ),
        ),
      ),
    );
  }
}
