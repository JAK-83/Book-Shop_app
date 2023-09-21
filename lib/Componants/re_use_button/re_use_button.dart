import 'package:flutter/cupertino.dart';

import '../../Utills/def_colors.dart';
class re_use_button extends StatefulWidget {
  final VoidCallback oontap;
  final String title;
  re_use_button({Key? key, required this.oontap, required this.title}) : super(key: key);

  @override
  State<re_use_button> createState() => _re_use_buttonState();
}

class _re_use_buttonState extends State<re_use_button> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.oontap,
      child: Container(
                  height: 56, 
                  width: 327, 
                  decoration: BoxDecoration(
                   color: Rang.addtocart_button_Color,
                    borderRadius: BorderRadius.circular(20) ,
                  ),
                  child: Center(
                    child: Text(widget.title,style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF)
                    ),),
                  ),
                 ),
    );
  }
}