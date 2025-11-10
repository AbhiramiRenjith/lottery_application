import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/dummyData/dummy_data.dart';

class WinnerDetailsWidget extends StatefulWidget {
  const WinnerDetailsWidget({super.key});

  @override
  State<WinnerDetailsWidget> createState() => _WinnerDetailsWidgetState();
}

class _WinnerDetailsWidgetState extends State<WinnerDetailsWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: winnerList.length,
          itemBuilder: (context, index, realIndex) {
            final winner = winnerList[index];
            return _buildWinnerCard(winner);
          },
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.27,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 4),
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildWinnerCard(Map<String, dynamic> winner) {
    return Container(
      width: double.infinity,

      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorConstants.lightBlue20,
        border: Border.all(
          color: ColorConstants.homeGradientLightBlue,
          width: 1.5.w,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Row(
                  children: [
                    Container(
                      width: 45.w,
                      height: 45.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        gradient: LinearGradient(
                          colors: [
                            ColorConstants.homeGradientLightBlue,
                            ColorConstants.homeGradientDarkBlue,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.w),
                        child: Image.asset(
                          'images/prize.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          winner['name'],
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                            color: ColorConstants.blackColor,
                          ),
                        ),
                        Text(
                          winner['ticketName'],
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: ColorConstants.redColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: ColorConstants.grey,
                      width: 1.2.w,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 38.w,
                            height: 32.w,
                            decoration: BoxDecoration(
                              color: ColorConstants.lightGreen20,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(
                              Icons.confirmation_num_outlined,
                              color: ColorConstants.greenClr,
                              size: 22.sp,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                TextConstants.ticketNumber,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: ColorConstants.blackGrey,
                                ),
                              ),
                              Text(
                                winner['ticketNumber'],
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 5.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            TextConstants.prediction,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            'images/verified.png',
                            width: 16.sp,
                            height: 16.sp,
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 38.w,
                            height: 32.w,
                            decoration: BoxDecoration(
                              color: ColorConstants.lightBlue30,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(
                              Icons.location_on_outlined,
                              color: ColorConstants.blueColor,
                              size: 22.sp,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                TextConstants.location,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              Text(
                                winner['location'],
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h),
                child: Container(
                  height: 1.5.h,
                  color: ColorConstants.dividerBlue,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.h, top: 5.h),
                child: Row(
                  children: [
                    Text(
                      TextConstants.winDate,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          width: 8.w,
                          height: 8.w,
                          decoration: BoxDecoration(
                            color: ColorConstants.greenClr,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          TextConstants.verified,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
