// ignore: unused_import
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_01/Componants/Get%20Start%20Componants/imag.dart';
import 'package:project_01/Componants/Get%20Start%20Componants/scr_text.dart';
// ignore: unused_import
import 'package:project_01/Screens/home_screen.dart';
import 'package:project_01/Utills/def_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore: unused_import
import '../../Componants/Get Start Componants/pag_view.dart';
import '../../Componants/Get Start Componants/re_Button.dart';
// ignore: unused_import
import '../../Componants/Get Start Componants/suporting_text.dart';
import '../other screens/bottom_nav_bar.dart';

class get_start_src extends StatefulWidget {
  get_start_src({Key? key}) : super(key: key);

  @override
  State<get_start_src> createState() => _get_start_srcState();
}

class _get_start_srcState extends State<get_start_src> {
  PageController _pageController = PageController();
  final _controller = PageController();
// Define a variable to keep track of the current page index
var _currentPage = 0;
/////////////////

//////////////////////////
  @override
  Widget build(BuildContext context) {
    // text_length = scr_text.pag.length;
    return Scaffold(
      backgroundColor: Rang.bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
///////page view
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                PageView.builder(
                    controller: _pageController,
                    itemCount: scr_text.pag.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Column(
                            children: [
                              ////text///
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 33, right: 33, left: 43),
                                child: Text(
                                  scr_text.pag[index],
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Rang.txt_color,
                                  ),
                                ),
                              ),
/////
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, right: 33, left: 30),
                                child: Text(scr_text.down_text[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Rang.down_txt_color,
                                      // height: 1
                                    )),
                              )

                              ///img
                            ],
                          ),
                          Positioned(
                            left: 110,
                            top: 138,
                            child: Image.asset(
                              "assets/icons/Emoji.png",
                              height: 30,
                            ),
                          ),
                        ],
                      );
                    }),
              ],
              onPageChanged: (int page) {
                // Update the current page index when the page changes
                setState(() {
                  _currentPage = page;
                });
              },
            ),
          ),

//////shoe current pag indicator
          Padding(
            padding: const EdgeInsets.only(left: 42, top: 43),
            child: SmoothPageIndicator(
              controller: _pageController,
               count: 2,
               effect:const ExpandingDotsEffect(
                dotColor: Colors.white,
                //spacing: 20
               ),
               
               ),
          ),
///////suporting text
        const  img(),

////// button
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => bottom_nav_barr()));
              },
              child:const re_button()),
        ],
      ),
    );
  }
}
