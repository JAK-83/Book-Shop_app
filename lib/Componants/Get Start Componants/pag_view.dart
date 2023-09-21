// import 'package:flutter/cupertino.dart';
// import 'package:project_01/Componants/Get%20Start%20Componants/scr_text.dart';
// import 'package:project_01/Utills/def_colors.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// class pag_view extends StatefulWidget {
//   const pag_view({Key? key}) : super(key: key);

//   @override
//   State<pag_view> createState() => _pag_viewState();
// }

// class _pag_viewState extends State<pag_view> {
//     PageController _pageController = PageController();
//   final _controller = PageController();
// // Define a variable to keep track of the current page index
//   var _currentPage = 0;
// /////////////////
//  // int text_length=0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//                 child: PageView(
//                   controller: _controller,
//                   children: [
//                     //  Padding(
//                     //                 padding: const EdgeInsets.only(
//                     //                     top: 30, right: 33, left: 30),
//                     //                 child: Text("Your holiday\nshopping\ndelivered to Screen\none",
//                     //                     style: TextStyle(
//                     //                       fontSize: 18,
//                     //                       fontWeight: FontWeight.w500,
//                     //                       color: Rang.down_txt_color,
//                     //                       // height: 1
//                     //                     )),
//                     //               ), Padding(
//                     //                 padding: const EdgeInsets.only(
//                     //                     top: 30, right: 33, left: 30),
//                     //                 child: Text("Your holiday\nshopping\ndelivered to Screen\ntwo",
//                     //                     style: TextStyle(
//                     //                       fontSize: 18,
//                     //                       fontWeight: FontWeight.w500,
//                     //                       color: Rang.down_txt_color,
//                     //                       // height: 1
//                     //                     )),
//                     //               )
//                     PageView.builder(
//                         controller: _pageController,
//                         itemCount: scr_text.pag.length,
//                         itemBuilder: (context, index) {
//                           return Stack(
//                             children: [
//                               Column(
//                                 children: [
                                  
//                                   ////text///
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 33, right: 33, left: 43),
//                                     child: Text(
//                                       scr_text.pag[index],
//                                       style: TextStyle(
//                                         fontSize: 30,
//                                         fontWeight: FontWeight.w700,
//                                         color: Rang.txt_color,
//                                       ),
//                                     ),
//                                   ),
// /////
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 30, right: 33, left: 30),
//                                     child: Text(scr_text.down_text[index],
//                                         style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w500,
//                                           color: Rang.down_txt_color,
//                                           // height: 1
//                                         )),
//                                   )

//                                   ///img
//                                 ],
//                               ),
//                               Positioned(
//                                 left: 110,
//                                 top: 138,
//                                 child: Image.asset(
//                                   "assets/icons/Emoji.png",
//                                   height: 30,
//                                 ),
//                               ),
//                             ],
//                           );
//                         }),
//                   ],
//                   onPageChanged: (int page) {
//                     // Update the current page index when the page changes
//                     setState(() {
//                       _currentPage = page;
                    
//                     });
//                   },
//                 ),
//               ),

//               Padding(
//             padding: const EdgeInsets.only(left: 42,top: 43),
//             child: SmoothPageIndicator(controller: _pageController, count: 2),
//           ),
//       ],
//     )       
//           //////down text
//          ;
//   }
// }