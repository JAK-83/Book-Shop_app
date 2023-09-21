import 'package:flutter/cupertino.dart';

import '../../Utills/imagess.dart';
class emptyIcon extends StatefulWidget {
  emptyIcon({Key? key}) : super(key: key);

  @override
  State<emptyIcon> createState() => _emptyIconState();
}

class _emptyIconState extends State<emptyIcon> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Stack(
                    children: [
                      Center(
                          child: Image.asset(
                        Pics_collection.empty_favourite_icon,
                        height: 250,
                        width: 200,
                      )),
                      const Positioned(
                          top: 100,
                          left: 140,
                          child: Text(
                            "No Data",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )),
                      const Positioned(
                          top: 70,
                          left: 200,
                          child: Text(
                            "!",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ) ;
  }
}