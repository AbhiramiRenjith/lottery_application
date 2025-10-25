import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/view/signinScreen/forget_password_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "Hello\nSign In",
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
                                      SizedBox(height: 30.h),
                                      TextFormField(
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF888888),
                                          fontSize: 15.sp,
                                        ),
                                        decoration: InputDecoration(
                                          labelText: 'Password',
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
                                        obscureText: true,
                                      ),
                                      SizedBox(height: 20.h),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 40.w,
                                    right: 40.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.7,
                                            child: Checkbox(
                                              value: false,
                                              onChanged: (value) {},
                                              activeColor: Colors.grey.shade600,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                            ),
                                          ),
                                          Text(
                                            'Remember me',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),

                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return ForgetPassword();
                                          }));
                                        },
                                        child: Text(
                                          'Forget password?',
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                      ),
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
                                          'SIGN IN',
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
