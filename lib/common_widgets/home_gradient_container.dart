


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottery_project/constants/color_constants.dart';

class HomeGradientContainer extends StatelessWidget {
  final Widget topContent;
  final Widget child;

  const HomeGradientContainer({
    super.key,
    required this.topContent,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorConstants.whiteColor, 
        
          child: Column(
            children: [
           
              Container(
                width: double.infinity,
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorConstants.homeGradientLightBlue,
                      ColorConstants.homeGradientDarkBlue,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r), 
                    bottomRight: Radius.circular(30.r),
                  ),
                ),
                child: topContent,
              ),
   
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: ColorConstants.whiteColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric( horizontal: 10.w),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: child,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}


