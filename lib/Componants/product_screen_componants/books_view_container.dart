import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utills/def_colors.dart';

class books_view_container extends StatefulWidget {
  final String img;
  final int price;
  final String sub_title;
  final VoidCallback oontap;
  books_view_container(
      {Key? key,
      required this.img,
      required this.price,
      required this.sub_title,
      required this.oontap})
      : super(key: key);

  @override
  State<books_view_container> createState() => _books_view_containerState();
}

class _books_view_containerState extends State<books_view_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      width: 300,
      height: 60,
      decoration: BoxDecoration(
          color: Rang.product_container_Color, //Colors.red,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          //img
          Container(
            margin: EdgeInsets.only(top: 22, left: 43, right: 49),
            height: 68,
            width: 68,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                        widget.img), //books[bookIndex]['Book_Cover_url']
                    fit: BoxFit.cover)),
          ),
          //add to cart icon
          GestureDetector(
            onTap: widget.oontap,
            child: Container(
              margin: EdgeInsets.only(left: 121, right: 15),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Rang.product_add_to_cart_icon_Color,
              ),
              child: Center(child: Icon(Icons.add)),
            ),
          ),

          //price text
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 90, bottom: 4),
            child: Text(
              '\$${widget.price.toString()}', //${books[bookIndex]['price'].toString()}
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Rang.product_price_text_Color,
              ),
            ),
          ),
          //price text
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 90, bottom: 20),
            child: Text(
              '${widget.sub_title}', //books[bookIndex]['BookName']
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Rang.product_subtitle_text_Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
