
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/dummyData/dummy_data.dart';

class LotteryNumberDropdownField extends StatefulWidget {
  final TextEditingController controller;

  const LotteryNumberDropdownField({super.key, required this.controller});

  @override
  State<LotteryNumberDropdownField> createState() =>
      _LotteryNumberDropdownFieldState();
}

class _LotteryNumberDropdownFieldState
    extends State<LotteryNumberDropdownField> {
  bool showDropdown = false;
  String selectedLottery = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorConstants.blueColor,
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(2, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
           
           controller: widget.controller, 
            decoration: InputDecoration(
              hint: Center(
                child: Text(
                  selectedLottery.isEmpty
                      ? TextConstants.enterNumber
                      : selectedLottery,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: selectedLottery.isEmpty
                        ? ColorConstants.hintColor
                        : ColorConstants.blackColor,
                    fontSize: 15,
                  ),
                ),
              ),
              filled: true,
              fillColor: ColorConstants.whiteColor,
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Container(
                decoration: const BoxDecoration(
                  color: ColorConstants.blueColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: const Icon(Icons.search, color: ColorConstants.whiteColor, size: 30),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  showDropdown
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: ColorConstants.greyColor,
                  size: 28,
                ),
                onPressed: () {
                  setState(() {
                    showDropdown = !showDropdown;
                  });
                },
              ),
            ),
          ),
        ),

       
        if (showDropdown)
          Container(
            margin: EdgeInsets.only(top: 8.h),
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
              children: lotteries
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
                        setState(() {
                          selectedLottery = lottery;
                          widget.controller.text =
                              lottery; 
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
