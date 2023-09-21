import 'package:flutter/material.dart';
import 'package:project_01/Componants/Home%20Scr%20Componants/recommmended_container.dart';
import 'package:project_01/Screens/other%20screens/add_to_cart_scr.dart';
import 'package:project_01/Utills/def_colors.dart';
import 'package:project_01/data/home_scr_data/data_base.dart';
import '../Componants/Home Scr Componants/discount_contianer.dart';
import '../Componants/Home Scr Componants/headin_or_custum_Appbar.dart';
import '../Componants/Home Scr Componants/search_bar_scr.dart';
import 'other screens/product_detail_screen.dart';

class Home_screen extends StatefulWidget {
  Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  bool isSearchBarActive = false; // Initialize here
  ////////////
  bool isFavorite(Map<String, dynamic> book) {
    return Dataa.favourite_data.contains(book);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      /////
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
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //heading or customappbarr
                heading_or_appBarr(
                  ontapTocartScreen: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => add_to_cart_Scr()));
                    setState(() {});
                  },
                  ontap_isSearchBarActive: () {
                    setState(() {
                      isSearchBarActive = true;
                    });
                  },
                ),
                //////
                Expanded(
                    child: ListView(
                  children: [
                    Container(
                      //color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: 123, //MediaQuery.of(context).size.height*0.3,
                      child: ListView.builder(
                          itemCount: Dataa.Shop_data.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            final shopData = Dataa.Shop_data[index];
                            final books = shopData.values.first['Books']
                                as List; //access shops books data

                            return ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const ClampingScrollPhysics(),
                                itemCount: books.length,
                                itemBuilder: (context, bookIndex) {
                                  final book = books[bookIndex];

                                  ///     final bookName = book['BookName'];
                                  //      final price = book['price'];
                                  return GestureDetector(
                                    onTap: () async {
                                      await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  detail_screen(
                                                    bookData: book,
                                                  )));
                                      setState(() {});
                                    },
                                    child: discount_container(
                                      ccolor: Rang.discount_container_color,
                                      img_url: book['Book_Cover_url'],
                                      percentOffPrice:
                                          book['percentOff'].toString(),
                                    ),
                                  );
                                });
                          }),
                    ),

                    ////////////////////////

                    /// Recommended
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, bottom: 18),
                      child: Text(
                        "Recommended",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF1E222B)),
                      ),
                    ),

                    //recommended products
                    ////////
                    Container(
                      //color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: 189, //MediaQuery.of(context).size.height*0.3,
                      child: ListView.builder(
                          itemCount: Dataa.Shop_data.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            final shopData = Dataa.Shop_data[index];
                            final shopKey = shopData.keys.first;
                            final shopInfo = shopData[shopKey];
                            final books = shopData.values.first['Books']
                                as List; //access shops books data
                            return ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const ClampingScrollPhysics(),
                                itemCount: books.length,
                                itemBuilder: (context, bookIndex) {
                                  final book = books[bookIndex];
                                  final isFav = isFavorite(book);
                                  return GestureDetector(
                                      onTap: () async {
                                        await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    detail_screen(
                                                      bookData: book,
                                                    )));
                                        setState(() {});
                                      },
                                      child: Stack(
                                        children: [
                                          recommended_container(
                                            oontap: () {
                                              setState(() {
                                                // Dataa.addtocart_data.add(Dataa.Shop_data[index]);
                                                if (Dataa.addtocart_data
                                                    .contains(book)) {
                                                  showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              "Item Already Exist"),
                                                          actions: [
                                                            TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    const Text(
                                                                        "Ok"))
                                                          ],
                                                        );
                                                      });
                                                } else {
                                                  Dataa.addtocart_data
                                                      .add(book);
                                                }
                                              });
                                            },
                                            img_url: book['Book_Cover_url'],
                                            title: book['BookName'],
                                            price: book['price'],
                                            sub_title: shopInfo['Books'][index]
                                                ['BookLevel'],
                                          ),

                                          ////favourite
                                          Positioned(
                                              top: 120,
                                              left: 115,
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    if (isFav) {
                                                      showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                                title: const Text(
                                                                    'Remove From Favorites'),
                                                                content: const Text(
                                                                    'Are you sure you want to Remove this Book From your favorites?'),
                                                                actions: <Widget>[
                                                                  TextButton(
                                                                    child: const Text(
                                                                        'Cancel'),
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop(
                                                                              false); // Return false when canceled
                                                                    },
                                                                  ),
                                                                  TextButton(
                                                                    child: const Text(
                                                                        'Remove'),
                                                                    onPressed:
                                                                        () {
                                                                      Dataa
                                                                          .favourite_data
                                                                          .remove(
                                                                              book);
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop(); // Return false when canceled
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                ]);
                                                          });
                                                      // Dataa.favourite_data.remove(book);
                                                    } else {
                                                      Dataa.favourite_data
                                                          .add(book);
                                                    }
                                                  });
                                                },
                                                child: Icon(
                                                  isFav
                                                      ? Icons.favorite
                                                      : Icons.favorite_border,
                                                  color: isFav
                                                      ? Colors.red
                                                      : Colors.grey,
                                                ),
                                              )),
                                        ],
                                      ));
                                });
                          }),
                    )
                  ],
                )),
              ],
            ),
    );
  }
}
