import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/common_widgets/bg_container_widget.dart';
import 'package:lottery_project/Authentication/widgets/custom_button.dart';
import 'package:lottery_project/common_widgets/dont_have_account_text_widget.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class VerifyAccountScreen extends StatelessWidget {
  VerifyAccountScreen({super.key});
  final List<TextEditingController> otpControllers = List.generate(
    4,
    (_) => TextEditingController(),
  );
  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: TextConstants.verifyAccnt,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: 60.w,
                height: 60.h,
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                child: TextField(
                  controller: otpControllers[index],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    counterText: "",
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: const BorderSide(
                        color: ColorConstants.otpBoxColr,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: ColorConstants.blackColor),
                    ),
                  ),
                ),
              );
            }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                Text(
                  TextConstants.resentOtp,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                    color: ColorConstants.redColor,
                  ),
                ),
                Spacer(),
                Text(
                  "1:25",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                    color: ColorConstants.gradientDarkBlue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.h),
          CustomButton(
            text: TextConstants.verify,
            onPressed: () {
              validate(context);
            },
          ),
          SizedBox(height: 15.h),
          DonthaveaccountTextWidget(),
        ],
      ),
    );
  }

  void validate(BuildContext context) {
    String otp = otpControllers.map((e) => e.text).join();
    if (otp.length == 4) {
      Navigator.pushNamed(context, '/create_new_pass');
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            title:  Text(TextConstants.alert),
            content:  Text(TextConstants.pleaseEnterOtp),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child:  Text(TextConstants.ok),
              ),
            ],
          );
        },
      );
    }
  }
}
