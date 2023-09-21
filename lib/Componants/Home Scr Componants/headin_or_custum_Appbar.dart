import 'package:flutter/cupertino.dart';
import 'package:project_01/Componants/Home%20Scr%20Componants/search_barr.dart';

import '../../Utills/def_colors.dart';
import 'drop_down_manue_heading.dart';
import 'drop_down_menu.dart';
import 'name_&_icon.dart';

class heading_or_appBarr extends StatefulWidget {
  final VoidCallback ontapTocartScreen;
  final VoidCallback ontap_isSearchBarActive;
  heading_or_appBarr(
      {Key? key,
      required this.ontapTocartScreen,
      required this.ontap_isSearchBarActive})
      : super(key: key);

  @override
  State<heading_or_appBarr> createState() => _heading_or_appBarrState();
}

class _heading_or_appBarrState extends State<heading_or_appBarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .36,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Rang.bg_color,
      ),
      child: Column(
        children: [
          // name + add to cart icon

          Padding(
            padding: const EdgeInsets.only(top: 52, left: 15, right: 15),
            child: Row(
              children: [
                const Text(
                  "Hey, JAMEEL",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFF8F9FB)),
                ),
                const Spacer(),
                name_bage_icon(
                    iconColor: const Color(0xFFF8F9FB),
                    //  addtocarTotaltIetmNumber, //
                    oontap: widget.ontapTocartScreen),
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          ///searchBarr
          search_barr(oontap: widget.ontap_isSearchBarActive),

          //drop down menu heading
          const drop_down_menu_heading(),

          ///drop down manue
          const drop_down_menu(),
        ],
      ),
    );
  }
}
