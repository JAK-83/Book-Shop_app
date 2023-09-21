import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../re_use_button/re_use_button.dart';
class syb_total extends StatefulWidget {
  final int final_total;
  final int deliveryChargis;
  final String buttoontitle;
  final VoidCallback onntap;
  
  syb_total({Key? key,
   required this.final_total, 
   required this.deliveryChargis, 
   required this.buttoontitle, 
   required this.onntap}) : super(key: key);

  @override
  State<syb_total> createState() => _syb_totalState();
}

class _syb_totalState extends State<syb_total> {
 
  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: const EdgeInsets.only(left: 8, right: 8),
            height: 220,
            width: 359,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 216, 226, 247), //Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38))),
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 37, right: 37),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Subtotal",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF616A7D),
                          fontSize: 14,
                        ),
                      ),
                      const Spacer(),
                      Text(
                          "\$${widget.final_total}"  , // "\$${finalTotal}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          // color: Color(0xFF616A7D),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  ////
              const    Row(
                    children: [
                       Text(
                        "Delivery",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF616A7D),
                        ),
                      ),
                     Spacer(),
                      Text(
                             "\$10" ,// "\$${deliveryCharg.toString()}",
                        style:  TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          //color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ////
                  Row(
                    children: [
                      const Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF616A7D),
                        ),
                      ),
                      const Spacer(),
                      widget.final_total == 0
                          ? Text(
                              "\$${widget.final_total}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                //color: Color(0xFF616A7D),
                              ),
                            )
                          : Text(
                              "\$${widget.final_total + widget.deliveryChargis}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                //color: Color(0xFF616A7D),
                              ),
                            ),
                    ],
                  ),
               
               //checkout button
            const   SizedBox(
                height: 34,
               ),
               re_use_button(
                title: widget.buttoontitle,
                 oontap: widget.onntap,
                //() {
                  
                //    widget.final_total ==0 ?
                //    showDialog(context: context, builder: (BuildContext context){
                // return    AlertDialog(
                //       title: Text("Please Add Some Product"),
                //       actions: [
                //         TextButton(onPressed: (){
                //           Navigator.pop(context);
                //         }, child: Text("Ok"))
                //       ],
                //     );
                //    })
                //     :

                //    Navigator.push(context,MaterialPageRoute(builder: (context)=>check_out_screen()));


                // },
               ),
             ],
              ),
            ),
          );
  }
}