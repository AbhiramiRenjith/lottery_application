import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/PredictionSelection/views/prize_list.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/dummyData/dummy_data.dart';

class AllLotteries extends StatelessWidget {
  const AllLotteries({super.key});


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
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
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
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.h,
                  childAspectRatio: 1
            ),
            itemCount: allLotteries.length,
            itemBuilder: (context, index) {
              final lottery = allLotteries[index];
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: GestureDetector(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return PrizeListScreen(lotteryName:lottery['ticketName'],lotteryImage:lottery['image']);
                   }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstants.lightGrey,
                          blurRadius: 6.r,
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
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: ColorConstants.blackColor,
                            ),
                          ),
                                
                          Text(
                            '${lottery['totalPrizes']} Prizes',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 13.sp,
                              color: ColorConstants.prizeGreyColor,
                            ),
                          ),
                        ],
                      ),
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
