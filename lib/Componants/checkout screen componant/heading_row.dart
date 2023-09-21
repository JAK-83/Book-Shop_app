///used in checkout screen and add new card screen
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Utills/imagess.dart';

class heading extends StatefulWidget {
  final String title;
  heading({Key? key, required this.title}) : super(key: key);

  @override
  State<heading> createState() => _headingState();
}

class _headingState extends State<heading> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //bakc icon
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: CircleAvatar(
            backgroundImage: AssetImage(Pics_collection.back_icon),
          ),
        ),

        SizedBox(
          width: 38,
        ),
        ////cart length
        Text(
          widget.title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
