

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class LotteryDatePickerField extends StatefulWidget {
  final TextEditingController controller;
  const LotteryDatePickerField({super.key, required this.controller});

  @override
  State<LotteryDatePickerField> createState() => _LotteryDatePickerFieldState();
}

class _LotteryDatePickerFieldState extends State<LotteryDatePickerField> {
  DateTime? selectedDate;

  Future<void> _pickDate(BuildContext context) async {
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
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.controller.text =
            "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        controller:  widget.controller,
        readOnly: true,
        onTap: () => _pickDate(context),
        decoration: InputDecoration(
          hint: Center(
            child: Text(
              selectedDate == null
                  ? TextConstants.selectDate
                  : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: selectedDate == null
                    ? ColorConstants.hintColor
                    : Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          filled: true,
          fillColor: ColorConstants.whiteColor,
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
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
            child: const Icon(
              Icons.calendar_month_outlined,
              color: ColorConstants.whiteColor,
              size: 30,
            ),
          ),
          suffixIcon: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
