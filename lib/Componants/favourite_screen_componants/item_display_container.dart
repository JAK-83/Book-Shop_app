import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class item_display_container extends StatefulWidget {
  final VoidCallback ontapToproductScreen;
  final String Book_cover_url;
  final String bookName;
  final String BookLevel;
  final String price;
  final String oldPrice;
  final VoidCallback removeat;
  item_display_container(
      {Key? key,
      required this.ontapToproductScreen,
      required this.Book_cover_url,
      required this.bookName,
      required this.BookLevel,
      required this.price,
      required this.oldPrice,
      required this.removeat})
      : super(key: key);

  @override
  State<item_display_container> createState() => _item_display_containerState();
}

class _item_display_containerState extends State<item_display_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 2),
      height: 110,
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GestureDetector(
          onTap: widget.ontapToproductScreen,
          child: Column(
            children: [
              Row(
                children: [
                  ///img
                  Container(
                    height: 80,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(widget.Book_cover_url)),
                    ),
                  ),

                  const SizedBox(
                    width: 31,
                  ),

                  ///name price txt
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.bookName.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "${widget.BookLevel.toString()}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$${widget.price.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "\$${widget.oldPrice.toString()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 145, 139, 139),
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),

                  //favourite icon button

                  GestureDetector(
                      onTap: widget.removeat,
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ))
                ],
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
    
  }
}
