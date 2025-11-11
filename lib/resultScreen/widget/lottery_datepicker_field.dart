


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/ResultScreen/provider/lottery_result_provider.dart';
import 'package:provider/provider.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';


class LotteryDatePickerField extends StatefulWidget {
  const LotteryDatePickerField({super.key});

  @override
  State<LotteryDatePickerField> createState() => _LotteryDatePickerFieldState();
}

class _LotteryDatePickerFieldState extends State<LotteryDatePickerField> {
  DateTime? selectedDate;

  Future<void> _pickDate(BuildContext context, LotteryResultController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: ColorConstants.blueColor,
              onPrimary: ColorConstants.whiteColor,
              onSurface: ColorConstants.blackColor,
            ),
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        controller.setDate("${picked.day}/${picked.month}/${picked.year}");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LotteryResultController>(context);

    return Container(
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
        controller: controller.dateController,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
        ),
        readOnly: true,
        onTap: () => _pickDate(context, controller),
        decoration: InputDecoration(
          hint: Center(child: Text(TextConstants.selectDate, style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: controller.dateController.text.isEmpty
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
              Icons.calendar_month_outlined,
              color: ColorConstants.whiteColor,
              size: 30.sp,
            ),
          ),
          suffixIcon: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
