
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/Notification/provider/notification_provider.dart';
import 'package:lottery_project/Notification/widgets/notification_tile.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:provider/provider.dart';
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NotificationProviderr>(context);
    final notifications = controller.notifications;
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        elevation: 0,
        toolbarHeight: 150.h,
        centerTitle: true,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10.w),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          
          }, icon: Icon(Icons.arrow_back_ios_new,size: 20.sp,)),
        ),
        title: Text(
         TextConstants.notification,
          style: GoogleFonts.poppins(
            color: ColorConstants.black,
            fontWeight: FontWeight.w600,
            fontSize: 22.sp,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: PopupMenuButton<String>(
              color: ColorConstants.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              icon: Icon(Icons.more_horiz, color: ColorConstants.black,size: 20.sp,),
              offset: const Offset(0, 50),
              onSelected: (value) {
                if (value == 'delete') {
                  controller.clearAll();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('All notifications deleted'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem<String>(
                  value: 'delete',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Icon(Icons.delete_outline,
                          color: ColorConstants.redColor, size: 20),
                      SizedBox(width: 8.w),
                      Text(
                        "Delete All",
                        style: GoogleFonts.poppins(
                          color: ColorConstants.redColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  if (notifications.any((n) => n['section'] == 'Today'))
                    _buildSectionTitle("Today"),          
                  ...notifications
                      .where((n) => n['section'] == 'Today')
                      .map(
                        (n) => NotificationTile(
                          key: ValueKey(n['title']),
                          notification: n,
                          onDismissed: () {
                            controller.deleteNotification(n);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                behavior: SnackBarBehavior.floating,
                                margin: EdgeInsets.only(
                                  bottom: 80.h,
                                  left: 16.w,
                                  right: 16.w,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                backgroundColor: ColorConstants.whiteColor,
                                content: Text(
                                 TextConstants.deleted,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: ColorConstants.blackColor,
                                  ),
                                ),
                                action: SnackBarAction(
                                  label: TextConstants.undo,
                                  textColor:
                                      ColorConstants.homeGradientDarkBlue,
                                  onPressed: controller.undoDelete,
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                  if (notifications.any((n) => n['section'] == 'Yesterday'))
                    _buildSectionTitle("Yesterday"),

                  ...notifications
                      .where((n) => n['section'] == 'Yesterday')
                      .map(
                        (n) => NotificationTile(
                          key: ValueKey(n['title']),
                          notification: n,
                          onDismissed: () {
                            controller.deleteNotification(n);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                behavior: SnackBarBehavior.floating,
                                margin: EdgeInsets.only(
                                  bottom: 80.h,
                                  left: 16.w,
                                  right: 16.w,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                backgroundColor: ColorConstants.whiteColor,
                                content: Text(
                                  TextConstants.deleted,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: ColorConstants.blackColor,
                                  ),
                                ),
                                action: SnackBarAction(
                                  label: TextConstants.undo,
                                  textColor:
                                      ColorConstants.homeGradientDarkBlue,
                                  onPressed: controller.undoDelete,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                ],
              ),
            ),
            if (notifications.isNotEmpty)
              Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Center(
                  child: Text(
                    "That's all your notification from last 30 days",
                        textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: ColorConstants.darkBlue600,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: ColorConstants.darkBlue600,
        ),
      ),
    );
  }
}
