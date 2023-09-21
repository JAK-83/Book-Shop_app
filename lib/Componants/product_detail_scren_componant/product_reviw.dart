import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class product_review extends StatefulWidget {
  product_review({Key? key}) : super(key: key);

  @override
  State<product_review> createState() => _product_reviewState();
}

class _product_reviewState extends State<product_review> {
   double changrRating=4.5;
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding:  EdgeInsets.only(top: 28, left: 26),
              child: Row(
                children: [
         RatingBar.builder(
          initialRating: 4.5,
          itemSize: 25,
          updateOnDrag: true,
          
          unratedColor: Colors.black,
          allowHalfRating: true,
          itemCount: 5,
          itemBuilder: (context, index)=>   Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (Ratingvalue){
                    setState(() {
                      changrRating=Ratingvalue;
                    });
                  }


  ,),



                   //text
                  Text(
                    "110 Reviews",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA1A1AB),
                    ),
                  ),
                ],
              ),
            );
  }
}