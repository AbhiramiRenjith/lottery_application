import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/view/createAccount/create_account_screen.dart';

class VerifySuccsessfullScreen extends StatelessWidget {
  const VerifySuccsessfullScreen({super.key});

  @override
  Widget build(BuildContext context) {
     Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CreateAccountScreen()),
      );
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(top: 519.h),
        child: Center(
          child: Column(
            children: [
              Text("Verify Successfull",style: GoogleFonts.poppins(
                fontWeight:FontWeight.w600,fontSize:28.sp,
                color: Color(0XFF448AFF)
              ),),
              Text("Email  verified Successfully\n     Your Account Is Ready",maxLines: 2,style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,color: Color(0XFF888888),fontSize: 14.sp
              ),)
            ],
          ),
        ),
      ),

    );
  }
}