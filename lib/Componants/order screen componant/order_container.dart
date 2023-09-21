import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class order_container extends StatefulWidget {
  final String url_pic;
  final String bookName;
  final String price;
  final int indexx;
  final VoidCallback onntap;
  final VoidCallback conditionontap;
  final int condition;
  final String date;
  order_container({
    Key? key,
    required this.url_pic,
    required this.bookName,
    required this.price,
    required this.indexx,
    required this.onntap,
    required this.conditionontap,
    required this.condition,
    required this.date,
  }) : super(key: key);

  @override
  State<order_container> createState() => _order_containerState();
}

class _order_containerState extends State<order_container> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.conditionontap,
      child: Column(
        children: [
          /////product container
          Row(
            children: [
              //product pic
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            widget.url_pic), //(product['Book_Cover_url']),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 17,
              ),
              Column(
                children: [
                  Text(widget.bookName),
                  // Text(product['BookName']),
                  Text("\$${widget.price}"),
                  //Text(productPrice.toString()),
                ],
              ),
              const Spacer(),
              Text("ID: #342${widget.indexx}"),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          widget.condition == widget.indexx
              ?

              //////rider
              Stack(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          // color: Colors.red
                          ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ///ride pic
                              Container(
                                height: 123,
                                width: 175,
                                decoration: BoxDecoration(
                                    //color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/icons/ride.png"))),
                              ),

                              ////
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Your Order",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400)),

                                  const Text(
                                    "Is on the way",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),

                                  SizedBox(height: 15),
                                  /////Track Order button
                                  GestureDetector(
                                    onTap: widget.onntap,
                                    child: Container(
                                      width: 115,
                                      height: 56,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF2A4BA0),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                        child: Text(
                                          "Track Order",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    ////rider dp
                    ////rider dp
                    Positioned(
                      top: 80,
                      left: 59,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/2635314/pexels-photo-2635314.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),

                    ///
                    const Positioned(
                        top: 120,
                        left: 20,
                        child: Text(
                          "Meet our rider, Rakib",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8891A5)),
                        ))
                  ],
                )
              : Row(
                  children: [
                    Text(widget.date),
                    Spacer(),
                    Container(
                      width: 74,
                      height: 26,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0x1A2A4BA0)),
                      child: const Center(
                        child: Text(
                          "Success",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF2A4BA0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
