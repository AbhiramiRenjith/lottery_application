import 'package:flutter/material.dart';
import 'package:lottery_project/HomeScreen/widgets/high_plan.dart';
import 'package:lottery_project/HomeScreen/widgets/plancard.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';

class PlanWidgetHandler {
  static Widget getPlanWidget(String currentPlan) {
    switch (currentPlan.toLowerCase()) {
      case TextConstants.free:
        return PlanCard(
          title: TextConstants.currentPlan,
          titleColor: ColorConstants.whiteColor,
          description: TextConstants.limitedAccess,
          descriptionColor: ColorConstants.whiteColor,
          planType: TextConstants.freePlan,
        );

      case TextConstants.upgrade:
        return PlanCard(
          title: TextConstants.currentPlan,
          titleColor: ColorConstants.whiteColor,
          description: "Limited access over",
          descriptionColor: ColorConstants.redColor,
          planType: TextConstants.upgradePlan,
        );

      case TextConstants.highplan:
        return HighPlan();

      case TextConstants.basic:
        return PlanCard(
          title: TextConstants.activePlan,
          titleColor: ColorConstants.greenClr,
          description: TextConstants.chance,
          descriptionColor: ColorConstants.whiteColor,
          planType: TextConstants.basicPlan,
        );

     case TextConstants.elite:
        return PlanCard(
           title: TextConstants.activePlan,
          titleColor: ColorConstants.greenClr,
          description: TextConstants.chance,
          descriptionColor: ColorConstants.whiteColor,
          planType: TextConstants.elitePlan
        );
        case TextConstants.preminum:
        return PlanCard(
           title: TextConstants.activePlan,
          titleColor: ColorConstants.greenClr,
          description: TextConstants.chance,
          descriptionColor: ColorConstants.whiteColor,
          planType:TextConstants.preminumPlan,
        );
     default:
         return PlanCard(
        title: "",
        description: "",
        titleColor: Colors.white,
        descriptionColor: Colors.white,
        planType: "",
       
      );

        
    }
  }
}
