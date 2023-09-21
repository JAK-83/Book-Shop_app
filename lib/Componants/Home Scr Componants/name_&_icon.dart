import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:project_01/data/home_scr_data/data_base.dart';

class name_bage_icon extends StatefulWidget {
 
  final VoidCallback oontap;
  final Color iconColor;
  
  name_bage_icon({Key? key, required this.oontap, required this.iconColor,})
      : super(key: key);

  @override
  State<name_bage_icon> createState() => _name_bage_iconState();
}

class _name_bage_iconState extends State<name_bage_icon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.oontap,
      child: Stack(children: [
         Icon(
          Icons.shopping_bag_outlined,
          size: 30,
          color: widget.iconColor,//Color(0xFFF8F9FB),
        ),
        Positioned(
          left: 12,
          bottom: 10,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: Color(0xFFF9B023),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              Dataa.addtocart_data.length.toString(),
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)),
            )),
          ),
        )
      ]),
    );
  }
}
