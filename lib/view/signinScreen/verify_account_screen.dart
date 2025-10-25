import 'package:flutter/material.dart';
import 'package:lottery_project/view/signinScreen/components/bg_container_widget.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainerWidget(
      title: 'Verify your\n account',
      
      child: Column(
       
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: 54,
                height: 54,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    counterText: "",
    enabledBorder: OutlineInputBorder(
         borderRadius: BorderRadius.zero,
          
            borderSide: BorderSide(color: Color(0XFFD4D4D4)), 
          ),
           focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.black), 
          ),
                  ),
                ),
              );
            }),
          ),
        
        ],
      ),
    );
  }
}
