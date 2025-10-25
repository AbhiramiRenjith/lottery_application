import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
   final Widget? suffixIcon;


  const CustomTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon, 
    
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      
      style: GoogleFonts.poppins(
        color: const Color(0xFF888888),
        fontSize: 14.sp,
        fontWeight: FontWeight.w400
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(
          fontSize: 16.sp,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC1C1C1)),
        ),
        suffixIcon: suffixIcon, 
      
      ),
      
      
    );
  }
}
