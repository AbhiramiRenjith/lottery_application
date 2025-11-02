
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_project/History/views/history_screen.dart';
import 'package:lottery_project/HomeScreen/views/home_screen.dart';
import 'package:lottery_project/constants/color_constants.dart';
import 'package:lottery_project/constants/text_constants.dart';
import 'package:lottery_project/ResultScreen/views/lottery_result_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int indexNum = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const LotteryResultScreen(),
    const HistoryScreen(),
    const Center(child: Text("Profile Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexNum],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
                 boxShadow: [
            BoxShadow(
              color: ColorConstants.shadowClr,
              blurRadius: 5,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: Stack(
          children: [
            BottomNavigationBar(
              backgroundColor: ColorConstants.whiteColor,
              type: BottomNavigationBarType.fixed,
              currentIndex: indexNum,
              selectedItemColor: ColorConstants.gradientDarkBlue,
              unselectedItemColor: ColorConstants.blackColor,
              iconSize: 28,
              selectedLabelStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
              unselectedLabelStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              elevation: 0,
              onTap: (index) {
                setState(() {
                  indexNum = index;
                });
              },
              items: [
                _navItem(Icons.home_filled, TextConstants.home, 0),
                _navItem(Icons.event_repeat_sharp, TextConstants.result, 1),
                _navItem(Icons.history, TextConstants.history, 2),
                _navItem(
                    Icons.account_circle_outlined, TextConstants.profile, 3),
              ],
            ),

            Positioned(
              top: 0,
              left: MediaQuery.of(context).size.width / 4 * indexNum +
                  MediaQuery.of(context).size.width / 8 -
                  21, 
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 3,
                width: 42,
                decoration: BoxDecoration(
                  color: ColorConstants.blueColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  BottomNavigationBarItem _navItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}

