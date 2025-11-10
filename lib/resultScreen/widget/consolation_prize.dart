
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/dummyData/dummy_data.dart';

class ConsolationPrize extends StatelessWidget {
  const ConsolationPrize({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3.r,
            offset: const Offset(2, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
     
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
              color: ColorConstants.blueColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
            ),
            child: Center(
              child: Text(
                TextConstants.consolationPrize,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.whiteColor,
                  fontSize: 20.sp
                ),
              ),
            ),
          ),

          SizedBox(height: 10.h),

          Center(
            child: Text(
              '\$ 5,000/-',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
          ),

          SizedBox(height: 10.h),

         
          Padding(
            padding: EdgeInsets.symmetric(),
            child: Table(
              border: TableBorder(
                top: BorderSide(
                  color: ColorConstants.tfborderGreyColor,
                  width: .5.w,
                ),
                horizontalInside: BorderSide(
                  color: ColorConstants.tfborderGreyColor,
                  width: .5.w,
                ),
                verticalInside: BorderSide(
                  color: ColorConstants.tfborderGreyColor,
                  width: .5.w,
                ),
              ),
              children: [
                for (int i = 0; i < consolationPrizes.length; i += 2 )
                  TableRow(
                    children: [
                      _buildCell(consolationPrizes[i]),
                      if (i + 1 < consolationPrizes.length)
                        _buildCell(consolationPrizes[i + 1])
                      else
                        Container(),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCell(String text) {
    return Container(
      height: 50.h,
    
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w600),
      ),
    );
  }
}

