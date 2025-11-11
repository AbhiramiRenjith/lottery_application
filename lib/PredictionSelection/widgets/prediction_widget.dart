
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/HomeScreen/provider/high_plan_controller.dart';
import 'package:lottery_project/PredictionSelection/widgets/predicted_numbers_widget.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:provider/provider.dart';

class PredictionWidget extends StatefulWidget {
  const PredictionWidget({super.key});

  @override
  State<PredictionWidget> createState() => _PredictionWidgetState();
}

class _PredictionWidgetState extends State<PredictionWidget> {
  bool _isLoading = false;
  bool _showResult = false;
  bool _showInitial = true;
   List<String> _predictedNumbers = [];

  void _onGeneratePressed() async {
    setState(() {
      _isLoading = true;
      _showInitial = false;
      _showResult = false;
       _predictedNumbers = [];
    });

    await Future.delayed(const Duration(seconds: 5));
     List<String> generatedNumbers = ["2884", "3257", "7841", "9568"];


  

    setState(() {
      _isLoading = false;
      _showResult = true;
       _predictedNumbers = generatedNumbers;
    });
  }


  @override
  Widget build(BuildContext context) {
         
  final controller = Provider.of<PredictionNumbersController>(context);
    return Column(
      children: [
        SizedBox(height: 50.h),
        
        if (_showInitial) ...[
               Container(
          width: 75.w,
          height: 70.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
               ColorConstants.homeGradientLightBlue,
                 ColorConstants.homeGradientDarkBlue,
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Image.asset('images/starr.png'),
            // child: Image.asset(lotteryImage as String, fit: BoxFit.contain),
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          TextConstants.readyToPredict,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          TextConstants.generateAI,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyText,
          ),
        ),
        SizedBox(height: 10),
        Text(TextConstants.tapGeneratepredictions, style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: ColorConstants.blackGrey,
          ),),
        SizedBox(height: 25.h)
        ],

        if (_isLoading) ...[
          Image.asset(
            'images/loading.gif',
            width: 200.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.h),
       
          const CircularProgressIndicator(
            color: ColorConstants.blueColor,
            strokeWidth: 3,
          ),
          SizedBox(height: 10),
             Text(TextConstants.generateAi,
             textAlign: TextAlign.center,
               style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyText,
          ),),
          SizedBox(height: 25.h),
        ],
        if (_showResult) ...[
      PredictedNumbersWidget(predictedNumbers: _predictedNumbers),
        ],

        Container(
          width: double.infinity,
          height: 45.h,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                ColorConstants.homeGradientLightBlue,
                ColorConstants.homeGradientDarkBlue,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: 
                  Container(
          width: double.infinity,
          height: 45.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorConstants.blueColor, ColorConstants.darkGreen],
            ),
            borderRadius: BorderRadius.circular(20),
          ),

     child:  ElevatedButton.icon(
  onPressed: () {
    if (_showResult) {
      Navigator.pushNamed(
        context,
        '/bottomNav',
        
      );
      controller.updateNumbers(_predictedNumbers);

    } else {
      _onGeneratePressed();
    }
  },
  icon: Image.asset(
    'images/star.png',
    width: 18.w,
    height: 18.h,
    fit: BoxFit.contain,
  ),
  label: Text(
     TextConstants.generatePredictions,
    textAlign: TextAlign.center,
    style: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 17.sp,
      color: ColorConstants.whiteColor,
    ),
  ),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
  ),
),

          // child: ElevatedButton.icon(
          //   onPressed: _onGeneratePressed,
          //   icon: Image.asset(
          //     'images/star.png',
          //     width: 18.w,
          //     height: 18.h,
          //     fit: BoxFit.contain,
          //   ),
          //   label: Text(
          //     TextConstants.generatePredictions,
          //     textAlign: TextAlign.center,
          //     style: GoogleFonts.poppins(
          //       fontWeight: FontWeight.w500,
          //       fontSize: 17.sp,
          //       color: ColorConstants.whiteColor,
          //     ),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.transparent,
          //     shadowColor: Colors.transparent,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //     padding:
          //         EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          //   ),
          // ),
        ),
    
        ),
      ],
    );
  }
}
