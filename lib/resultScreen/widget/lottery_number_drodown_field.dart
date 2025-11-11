
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/ResultScreen/provider/lottery_result_provider.dart';
import 'package:provider/provider.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';


class LotteryNumberDropdownField extends StatefulWidget {
  const LotteryNumberDropdownField({super.key});

  @override
  State<LotteryNumberDropdownField> createState() =>
      _LotteryNumberDropdownFieldState();
}

class _LotteryNumberDropdownFieldState
    extends State<LotteryNumberDropdownField> {
  bool showDropdown = false;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LotteryResultController>(context);

    return Column(
      children: [
      
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorConstants.blueColor,
                blurRadius: 10.r,
                spreadRadius: 1.r,
                offset: const Offset(2, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: TextFormField(
            controller: controller.numberController,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
            ),
            readOnly: true, 
            onTap: () {
              setState(() {
                showDropdown = !showDropdown;
              });
            },
            decoration: InputDecoration(
              hint: Center(child: Text(TextConstants.enterNumber, style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: controller.numberController.text.isEmpty
                        ? ColorConstants.labelTextGreyColor
                        : ColorConstants.blackColor,
                    fontSize: 15.sp))),
              filled: true,
              fillColor: ColorConstants.whiteColor,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Container(
                width: 38.sp,
                height: 55.sp,
                decoration: const BoxDecoration(
                  color: ColorConstants.blueColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Icon(
                  Icons.confirmation_num_outlined,
                  color: ColorConstants.whiteColor,
                  size: 30.sp,
                ),
              ),
              suffixIcon: Icon(
                showDropdown
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: ColorConstants.greyColor,
                size: 28.sp,
              ),
            ),
          ),
        ),

        // Dropdown List
        if (showDropdown)
          Container(
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: ColorConstants.whiteColor,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: ColorConstants.grey,
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: controller.lotteries
                  .map(
                    (lottery) => ListTile(
                      leading: Icon(
                        Icons.confirmation_num_outlined,
                        color: ColorConstants.blueColor,
                      ),
                      title: Text(
                        lottery,
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () {
                        controller.selectLottery(lottery);
                        setState(() {
                          showDropdown = false;
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
      ],
    );
  }
}
