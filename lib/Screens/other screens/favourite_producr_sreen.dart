import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_01/Screens/other%20screens/product_detail_screen.dart';

import '../../Componants/favourite_screen_componants/empty_icon.dart';
import '../../Componants/favourite_screen_componants/heading_stack.dart';
import '../../Componants/favourite_screen_componants/item_display_container.dart';
import '../../data/home_scr_data/data_base.dart';

class favourite_product_sreen extends StatefulWidget {
  favourite_product_sreen({Key? key}) : super(key: key);

  @override
  State<favourite_product_sreen> createState() =>
      _favourite_product_sreenState();
}

class _favourite_product_sreenState extends State<favourite_product_sreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          ////heading stack
          heading_stack(
            totalLentOfFav: Dataa.favourite_data.length.toString(),
          ),

          ////body
          Dataa.favourite_data.isEmpty
              ?

              ///Dataa.favouritedata.isEmpty ?
              emptyIcon()
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Dataa
                      .favourite_data.length, // widget.addcartList.length, //
                  itemBuilder: (BuildContext context, int index) {

                    final item = Dataa.favourite_data[index]; //
                    
                    return item_display_container(
                      ontapToproductScreen: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => detail_screen(
                                      bookData: Dataa.favourite_data[index],
                                    )));
                      },
                      Book_cover_url: item['Book_Cover_url'],
                      bookName: item['BookName'].toString(),
                      BookLevel: item['BookLevel'].toString(),
                      price: item['price'].toString(),
                      
                      oldPrice: item['regularPrice'].toString(),
                      removeat: () {
                        Dataa.favourite_data.removeAt(index);
                        setState(() {});
                      },
                    );
                  }),
        ],
      )),
    );
  }
}
