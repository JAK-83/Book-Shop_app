import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screens/other screens/add_to_cart_scr.dart';
import '../../Utills/def_colors.dart';
import '../Home Scr Componants/name_&_icon.dart';

class heading_data extends StatefulWidget {
  final VoidCallback oontap;
  const heading_data({Key? key, required this.oontap}) : super(key: key);

  @override
  State<heading_data> createState() => _heading_dataState();
}

class _heading_dataState extends State<heading_data> {
  bool isSearchBarActive = false; // Initialize here
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .36,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Rang.bg_color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 52, left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hey,JAMEEL",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Rang.txt_color,
                    // fontFamily: "Dosis-ExtraLight",
                  )),
              //////
              Spacer(),

              GestureDetector(
                onTap: widget.oontap,
                child: Icon(Icons.search,color: Rang.ByCategoryShop_search_icon_color,),
              ),
            const  SizedBox(
                width: 40,
              ),

              name_bage_icon(
                 iconColor:const Color(0xFFF8F9FB) ,
                oontap: () async {
                
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => add_to_cart_Scr(
                            //  addcartList: Dataa.addtocart_data,
                            )));
                setState(() {});
              })
            ],
          ),

          ////txt
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SHOP",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w300,
                    color: Rang.txt_color,
                    fontFamily: "Dosis-ExtraLight",
                  ),
                ),
              const  SizedBox(
                  height: 12,
                ),
                Text(
                  "By Category",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Rang.txt_color,
                    //fontFamily: "Dosis-ExtraLight",
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
