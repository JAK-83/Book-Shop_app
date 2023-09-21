import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Screens/other screens/category_screen.dart';
import '../../Utills/def_colors.dart';
import '../../Utills/imagess.dart';
import '../Home Scr Componants/name_&_icon.dart';

class heading_row extends StatefulWidget {
  final VoidCallback oontap;
  final String ShopName;
  final VoidCallback cartTap;
  heading_row(
      {Key? key,
      required this.oontap,
      required this.ShopName,
      required this.cartTap})
      : super(key: key);

  @override
  State<heading_row> createState() => _heading_rowState();
}

class _heading_rowState extends State<heading_row> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 57, right: 20),
      child: Row(
        children: [
          //back icon
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => category_screen()));
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage(Pics_collection.back_icon))),
            ),
          ),
          const SizedBox(
            width: 19,
          ),

          ///shop name
          Text(
            widget.ShopName,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF1E222B)),
          ),

          //SizedBox(width: 40,),
          const Spacer(),
          //search icon
          GestureDetector(
              onTap: widget.oontap,
              child: const Icon(
                Icons.search,
              )),

          const SizedBox(
            width: 20,
          ),

          name_bage_icon(
              iconColor: Rang.product_car_icon_Color, oontap: widget.cartTap)
        ],
      ),
    );
  }
}
