  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:project_01/Screens/other%20screens/product_screen.dart';
  import '../../Componants/Home Scr Componants/search_bar_scr.dart';
  import '../../Componants/shop_by_category_componants/heading_data.dart';
  import '../../Utills/def_colors.dart';
  import '../../data/home_scr_data/data_base.dart';

  class category_screen extends StatefulWidget {
    const category_screen({Key? key}) : super(key: key);

    @override
    State<category_screen> createState() => _category_screenState();
  }

  class _category_screenState extends State<category_screen> {
    int addtocarTotaltIetmNumber = 0;
    bool isSearchBarActive = false; // Initialize here
 
    @override
    Widget build(BuildContext context) {
      return Scaffold(
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
                children: [
                  heading_data(
                    oontap: () {
                      setState(() {
                        isSearchBarActive = true;
                      });
                    },
                  ),

                  //////////////////
                  ///grid view
                  Expanded(
                    child:  GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24,right: 24,top: 27),
          // physics: NeverScrollableScrollPhysics(), // Disable inner grid scrolling
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 19.0,
              mainAxisSpacing: 19,
              
            ),
            itemCount: Dataa.Shop_data.length,
        itemBuilder: (BuildContext context,  shopIndex) {
          final shop = Dataa.Shop_data[shopIndex];
          final shopKey = shop.keys.first;
          final shopInfo = shop[shopKey];
        // final shopName = shop.values.first['shopName'];
        //  final books = shop.values.first['Books'] as List;  //use it when want to access book data

              return GestureDetector(
                onTap: () async{
               await   Navigator.push(context, MaterialPageRoute(builder: (context)=>product_screen(
                    SHOPNAME: shopInfo['shopName'],
                    data:[ Dataa.Shop_data[shopIndex]],)));
              setState(() {
               
              });
                },
                child: Container(
                  height: 100, 
                  width: 100, 
                  decoration: BoxDecoration(
                    color:Rang.ByCategoryShopColor ,//Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
              
                      //img 
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 43,right: 43,bottom: 21),
                        height: 68, 
                        width: 68, 
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(image: NetworkImage(shopInfo['shop_pic_img_url']),fit: BoxFit.cover)
                        ),
              
              
                      ),
                    
                    //text 
                  Text(shopInfo['shopName'],style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Rang.ByCategoryShop_Text_Color,
                  ),),
              
                  Text(shopInfo['shopCategot'],style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Rang.ByCategoryShop_sub__Text_Color,
                  ),),
                    ],
                  ),
              
                ),
              );
            },
          )
                  ),
                ],
              ),
      );
    }
  }
