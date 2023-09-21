import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screens/other screens/add_to_cart_scr.dart';
import '../../Utills/imagess.dart';
import '../Home Scr Componants/name_&_icon.dart';
class heading_row extends StatefulWidget {
  heading_row({Key? key}) : super(key: key);

  @override
  State<heading_row> createState() => _heading_rowState();
}

class _heading_rowState extends State<heading_row> {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 19),
              child: Row(
                children: [
                  //back icon
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                  Spacer(),

                  ///shoping cart icon
                  name_bage_icon(
                    iconColor: Colors.black,
                    oontap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => add_to_cart_Scr(
                                  //addcartList: Dataa.addtocart_data,
                                  )));
                      setState(() {});
                    },
                  ),
                ],
              ),
            );
  }
}