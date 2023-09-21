import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_01/Screens/other%20screens/product_detail_screen.dart';
import 'package:project_01/Utills/def_colors.dart';
// ignore: unused_import
import '../../Componants/Home Scr Componants/recommmended_container.dart';
import '../../Componants/Home Scr Componants/search_bar_scr.dart';
import '../../Componants/product_screen_componants/books_view_container.dart';
import '../../Componants/product_screen_componants/heading_row.dart';
// ignore: unused_import
import '../../Componants/product_screen_componants/horizontal_slied_sugestion.dart';
import '../../data/home_scr_data/data_base.dart';
import 'add_to_cart_scr.dart';

class product_screen extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  final String SHOPNAME;

  product_screen({
    Key? key,
    required this.data,
    required this.SHOPNAME,
  }) : super(key: key);

  @override
  State<product_screen> createState() => _product_screenState();
}

class _product_screenState extends State<product_screen> {
  int selectedIndex = 0;
  List horizantal_sugestions = [
    "Popular",
    "Offer",
    "Low Price",
    "New Eddition",
    "Old Eddition"
  ];
  bool isSearchBarActive = false; // Initialize here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Rang.bg_Color,
        body: isSearchBarActive == true
            ? search_barr_scr(
                ooontap: () {
                  //when this will be click and then isSearchbarrActive will be flase and other widgets will apear
                  setState(() {
                    isSearchBarActive = false;
                  });
                },
              )

            ///down side widgets will get disapear when searchbar is active/clicked
            :
            ///////////////////

            Container(
                child: Column(children: [
                  // heading row of product screen
                  heading_row(
                    cartTap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => add_to_cart_Scr(
                                  // addcartList: Dataa.addtocart_data,
                                  )));
                      setState(() {});
                    },
                    oontap: () {
                      setState(() {
                        isSearchBarActive = true;
                      });
                    },
                    ShopName: widget.SHOPNAME,
                  ),
                  ////////////////
                  // horizontal slied sugestions
                  Container(
                    margin: EdgeInsets.only(top: 26, left: 24),
                    height: 40, // MediaQuery.of(context).size.height*0.15 ,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.yellow,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: horizantal_sugestions.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              height: 50,
                              width: 90,
                              decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? Rang
                                        .product_sugestion_container_Color // Change color when selected
                                    : Rang
                                        .product_sugestion02_container_Color, // Default color  ,//Rang.horizontal_sugestion_bg_Color,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: selectedIndex == index
                                      ? Colors
                                          .transparent // Border color when selected
                                      : Colors
                                          .black, // No border when not selected
                                  width: 1, // Border width
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                horizantal_sugestions[index],
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              )),
                            ),
                          );
                        }),
                  ),
                  ///////
                  const SizedBox(
                    height: 25,
                  ),
                  /////grid view
                  Expanded(
                    child:
                        // GridView.builder(
                        //     itemCount: widget.data.length,
                        //     shrinkWrap: true,
                        //     padding: EdgeInsets.only(left: 24, right: 24, top: 27),
                        //     // physics: NeverScrollableScrollPhysics(), // Disable inner grid scrolling
                        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        //       crossAxisCount: 2,
                        //       crossAxisSpacing: 19.0,
                        //       mainAxisSpacing: 19,
                        //     ),
                        //     itemBuilder: (context, index) {
                        //        final shopData = widget.data[index];
                        //         final shopKey = shopData.keys.first;
                        //        final shopInfo = shopData[shopKey]; //access data which isin list>map
                        //        final books = shopData.values.first['Books'] as List;//access shops books data which in list>map>list
                        //       return Container(
                        //         height: 200,
                        //         width: 100,
                        //         decoration: BoxDecoration(
                        //           color: Colors.red
                        //         ),
                        //         child: Text( books[index]['BookName']     ,//shopInfo['shopName'],
                        //         style: TextStyle(
                        //           fontSize: 30,
                        //           fontWeight: FontWeight.w400,
                        //           color: Colors.white,
                        //         ),
                        //       ),
                        //       );
                        //     })
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.data.length,
                            itemBuilder: (BuildContext context, index) {
                              final shopData = widget.data[index];
                              //final shopKey = shopData.keys.first;
                             // final shopInfo = shopData[shopKey];
                              final books = shopData.values.first['Books']
                                  as List; //access shops books data

                              //access data inside of map
                              //   final addressData = Dataa.Shop_data[index][shopKey]["adress"];
                              return GridView.builder(
                                  itemCount: books.length,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  physics:
                                      NeverScrollableScrollPhysics(), // Disable inner grid scrolling
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 19.0,
                                    mainAxisSpacing: 19,
                                  ),
                                  itemBuilder: (context, bookIndex) {
                                    final book = books[bookIndex];
                                    // final bookName = book['BookName'];
                                    // final price = book['price'];

                                    return GestureDetector(
                                      onTap: ()async {
                                   await     Navigator.push(context, MaterialPageRoute(builder:
                                         (context)=>detail_screen(
                                          bookData : book,//sent clicked book data to detail screen
                                         )));
                                         setState(() {
                                           
                                         });
                                      },
                                      child: books_view_container(
                                        oontap: () {
                                          Dataa.addtocart_data.add(book);
                                          setState(() {});
                                        },
                                        img: books[bookIndex]['Book_Cover_url'],
                                        price: books[bookIndex]['price'],
                                        sub_title: books[bookIndex]['BookName'],
                                      ),
                                    );
                                  });
                            }),
                  ),
                  ////////////////////////////////////
                ]),
              ));
  }
}
