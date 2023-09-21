import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class buttton extends StatefulWidget {
  final VoidCallback ooontap;
  final VoidCallback ontapbynow;
  buttton({Key? key, required this.ooontap, required this.ontapbynow}) : super(key: key);

  @override
  State<buttton> createState() => _butttonState();
}

class _butttonState extends State<buttton> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(right: 26, top: 30, left: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /////add  to cart button
                  GestureDetector(
                    onTap: widget.ooontap,
                    child: Container(
                      height: 56,
                      width: 143,
                      decoration: BoxDecoration(
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Center(
                          child: Text(
                        "Add TO Cart",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF2A4BA0)),
                      )),
                    ),
                  ),

                  SizedBox(
                    width: 11,
                  ),
                  /////By Now button
                  GestureDetector(
                    onTap: widget.ontapbynow,
                    child: Container(
                      height: 56,
                      width: 153,
                      decoration: BoxDecoration(
                        color: Color(0xFF2A4BA0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                          child: Text(
                        "By Now",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF)),
                      )),
                    ),
                  ),
                ],
              ),
            )
;
  }
}