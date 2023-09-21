import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class re_button extends StatelessWidget {
  const re_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 40,left: 61,right: 61,bottom: 32),
      child: Container(
       // margin: EdgeInsets.only(top: 118),
        height: 70,
        width: 253,
        decoration: BoxDecoration(
            color: Color(0xFFFAFBFD),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
    
          // crossAxisAlignment: CrossAxisAlignment.center,
    
          children: [
            Text("Get Started"),
            SizedBox(
              width: 46,
            ),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}