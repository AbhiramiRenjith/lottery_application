import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF055C9D), Color(0xFF448AFF)],
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 42.w, top: 93.h),
                        child: Text(
                          "Forget\nPassword",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 30.sp,
                            color: Colors.white,
                            height: 2,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.h),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45.r),
                              topRight: Radius.circular(45.r),
                            ),
                          ),
                          child: Form(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 75.h,
                                    right: 45.w,
                                    left: 45.h,
                                  ),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF888888),
                                          fontSize: 15.sp,
                                        ),
                                        decoration: InputDecoration(
                                          labelText: 'Phone Number',
                                          labelStyle: GoogleFonts.poppins(
                                            fontSize: 22.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0XFFC1C1C1),
                                            ),
                                          ),
                                        ),
                                      ),
                                     
                                  
                                      SizedBox(height: 20.h),
                                    ],
                                  ),
                                ),

                      

                                SizedBox(height: 20.h),

                                Container(
                                  width: 261.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF055C9D),
                                        Color(0xFF448AFF),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(50.r),
                                      onTap: () {},
                                      child: Center(
                                        child: Text(
                                          'SENT CODE',
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 15.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50.w,
                                      height: 1,
                                      color: Colors.grey.shade300,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      ' Or sign up with',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF676767),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    SizedBox(width: 8.w),
                                    Container(
                                      width: 50.w,
                                      height: 1,
                                      color: Colors.grey.shade300,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't have an account?",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Sign Up',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF81A6EE),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.h),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
