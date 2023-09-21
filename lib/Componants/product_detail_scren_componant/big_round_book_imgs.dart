import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:project_01/Componants/Get%20Start%20Componants/imag.dart';
// ignore: unused_import
import 'package:project_01/Utills/imagess.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class big_round_img extends StatefulWidget {
  // final ListTile book_images;
  final String book_cover;
  final String pic02;
  final String pic03;
  big_round_img({
    Key? key,
    required this.book_cover,
    required this.pic02,
    required this.pic03,
  }) : super(key: key);

  @override
  State<big_round_img> createState() => _big_round_imgState();
}

class _big_round_imgState extends State<big_round_img> {
  PageController _pageController = PageController();
  final _controller = PageController();
  var _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 67),
      height: 250,
      width: 250,
      decoration:const BoxDecoration(
       // color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Stack(children: [
        PageView(
          // scrollDirection: Axis.horizontal,
          controller: _controller,
          children: [
            ///book cover
            CircleAvatar(
              radius: 125, // Adjust the radius as needed
              backgroundColor: const Color.fromARGB(255, 243, 239, 239),
              backgroundImage: NetworkImage(widget.book_cover),
            ),

            ///pic02
            CircleAvatar(
              radius: 125, // Adjust the radius as needed
              backgroundColor: const Color.fromARGB(255, 243, 239, 239),
              backgroundImage: NetworkImage(widget.pic02),
            ),
            ////pic03
            CircleAvatar(
              radius: 125, // Adjust the radius as needed
              backgroundColor: const Color.fromARGB(255, 243, 239, 239),
              backgroundImage: NetworkImage(widget.pic03),
            ),
          ],
          onPageChanged: (int page) {
            // Update the current page index when the page changes
            setState(() {
              _currentPage = page;
            });
          },
        ),


//////shoe current pag indicator
          Positioned(
             left: 74,
             right: 64,
             top: 220,
            child: SmoothPageIndicator(
              
              controller: _controller,
               count: 3,
               effect:const ExpandingDotsEffect(
                spacing: 3,
                dotColor: Colors.white,
                //spacing: 20
               ),
               
               ),
          ),

      ]),
    );
  }
}
