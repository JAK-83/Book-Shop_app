import 'package:flutter/cupertino.dart';

import '../../Utills/def_colors.dart';
class drop_down_menu_heading extends StatelessWidget {
  const drop_down_menu_heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
              padding: const EdgeInsets.only(top:30 ,left: 18,right: 18),
              child: Row(
                children: [
                  Text("DELIVERY TO",style: TextStyle(
                     fontSize: 11,
                     fontWeight: FontWeight.w800,
                     color: Rang.drop_down_heading_txt_color,
            
                  )),
            
                      Spacer(),
                   
                   Text("WITHIN",style: TextStyle(
                     fontSize: 11,
                     fontWeight: FontWeight.w800,
                     color: Rang.drop_down_heading_txt_color,
            
                  )),
                ],
              ),
            );
  }
}