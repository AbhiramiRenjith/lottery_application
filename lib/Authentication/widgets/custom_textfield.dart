import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
    this.validator, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator, 
      style: GoogleFonts.poppins(
        color: ColorConstants.labelTextGreyColor,
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(
          fontSize: 25.sp,
          color: ColorConstants.blackColor,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.textfieldborderGreyColor),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}

