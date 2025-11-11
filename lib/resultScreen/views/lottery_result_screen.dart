
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/ResultScreen/provider/lottery_result_provider.dart';
import 'package:provider/provider.dart';
import 'package:lottery_project/common_widgets/home_gradient_container.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/ResultScreen/widget/consolation_prize.dart';
import 'package:lottery_project/ResultScreen/widget/lottery_datepicker_field.dart';
import 'package:lottery_project/ResultScreen/widget/lottery_number_drodown_field.dart';
import 'package:lottery_project/ResultScreen/widget/price_box.dart';

class LotteryResultScreen extends StatelessWidget {
  const LotteryResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LotteryResultController>(
      builder: (context, controller, _) {
        return HomeGradientContainer(
          topContent: Padding(
            padding: EdgeInsets.only(top: 60.h, left: 20.w, right: 20.w),
            child: Column(
              children: [
              
                Row(
                  children: [
                    Text(
                      TextConstants.lotteryResults,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.sp,
                        color: ColorConstants.whiteColor,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.qr_code_scanner,
                      color: ColorConstants.whiteColor,
                      size: 30.sp,
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                LotteryNumberDropdownField(),
                SizedBox(height: 10.h),
                LotteryDatePickerField(),
                SizedBox(height: 15.h),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all(5),
                    shadowColor: WidgetStateProperty.all(ColorConstants.blackColor),
                    backgroundColor: WidgetStateProperty.all(ColorConstants.whiteColor),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    minimumSize: WidgetStateProperty.all(Size(double.infinity, 45.h)),
                  ),
                  onPressed: () {
                    if (controller.numberController.text.isNotEmpty &&
                        controller.dateController.text.isNotEmpty) {
                      controller.togglePrizeList();
                    } else {
                      controller.resetPrizeList();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Textfield is empty')),
                      );
                    }
                  },
                  child: Text(
                    TextConstants.check,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.blueColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, left: 15.w, right: 15.w),
            child: controller.showPrizeList
                ? ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      ...controller.prizeList.map(
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
        );
      },
    );
  }
}
