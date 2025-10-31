import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class AllLotteries extends StatelessWidget {
  const AllLotteries({super.key});

  final List<Map<String, dynamic>> allLotteries = const [
    {
      'image': 'images/bhagyathara.png',
      'ticketName': 'Bhagyathara',
      'totalPrizes': 7,
    },
    {
      'image': 'images/sthreesakthi.png',
      'ticketName': 'Sthree Sakthi',
      'totalPrizes': 7,
    },
    {
      'image': 'images/dhanalakshmi.png',
      'ticketName': 'Dhanalakshmi',
      'totalPrizes': 7,
    },
    {
      'image': 'images/karunya.png',
      'ticketName': 'Karunya Plus',
      'totalPrizes': 7,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return 
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                TextConstants.allLotteries,
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.blackColor,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: ColorConstants.greenClr,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  TextConstants.predication,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.whiteColor,
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 15.h),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,

              
              mainAxisSpacing: 20.h,
              childAspectRatio: 1.5,
            ),
            itemCount: allLotteries.length,
            itemBuilder: (context, index) {
              final lottery = allLotteries[index];
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstants.lightGrey.withOpacity(0.5),
                        blurRadius: 6,
                        offset: const Offset(1, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                        Container(
                          width: 57.w,
                          height: 52.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ColorConstants.homeGradientLightBlue,
                                ColorConstants.homeGradientDarkBlue,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(6.w),
                            child: Image.asset(
                              lottery['image'],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                
                        SizedBox(height: 10.h),
                
                       
                        Text(
                          lottery['ticketName'],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: ColorConstants.blackColor,
                          ),
                        ),
              
                        Text(
                          '${lottery['totalPrizes']} Prizes',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: ColorConstants.greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      );
    
  }
}
