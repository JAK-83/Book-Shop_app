import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Componants/product_detail_scren_componant/addcart_by_now.dart';
import '../../Componants/product_detail_scren_componant/big_round_book_imgs.dart';
import '../../Componants/product_detail_scren_componant/book_title.dart';
import '../../Componants/product_detail_scren_componant/currentPrice.dart';
import '../../Componants/product_detail_scren_componant/heading_row.dart';
import '../../Componants/product_detail_scren_componant/product_reviw.dart';
import '../../data/home_scr_data/data_base.dart';
import 'add_to_cart_scr.dart';

class detail_screen extends StatefulWidget {
  final  Map<String, dynamic> bookData;
   detail_screen({Key? key, required this.bookData}) : super(key: key);

  @override
  State<detail_screen> createState() => _detail_screenState();
}

class _detail_screenState extends State<detail_screen> {
  double changrRating=4.5;
  bool isExpanded = false;
  bool isExpanded2=false;
  List  bookImgs=[];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //////heading row
            heading_row(),
            ////////////////

            ///big cercil book picx view
           
           big_round_img(
            pic02:widget.bookData['Book_other_02_img_url']  ,
            pic03:widget.bookData['Book_other_01_img_url']  ,
            book_cover:widget.bookData['Book_Cover_url']  ,
           ),
            //////book title
             bookTitle (
              bookTitl: widget.bookData['BookName'],
             ),
            
             
            ///
            //price current & discount price
            currentPrice(
              currentprice:widget.bookData['price'].toString() , 
              percentoff:widget.bookData['percentOff'].toString() , 
              regPrice:widget.bookData['regularPrice'].toString() , 
            ),
              // 
              
              
              
                       ///
            /////reviews star
             product_review(),

            /////add to cart button and  buyNow button
            buttton(
              ontapbynow: ()async{
                if(Dataa.addtocart_data.contains(widget.bookData)){
                  await   Navigator.push(context,MaterialPageRoute(builder: (context)=>add_to_cart_Scr()));
                setState(() {
                        
                      });
                }else{
                   Dataa.addtocart_data.add(widget.bookData);
                  await   Navigator.push(context,MaterialPageRoute(builder: (context)=>add_to_cart_Scr()));
                setState(() {
                        
                      });
                }


             // Dataa.addtocart_data.add(widget.bookData);
                      
                // await   Navigator.push(context,MaterialPageRoute(builder: (context)=>add_to_cart_Scr()));
                // setState(() {
                        
                //       });
              },
              ooontap: (){
                   if(Dataa.addtocart_data.contains(widget.bookData)){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Item Already Exist In Cart"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("OK")),
                      
                    ],
                  );
                });
                    

                setState(() {
                        
                      });
                }else{
                   Dataa.addtocart_data.add(widget.bookData);
                  setState(() {
                        
                      });
                }



                      // Dataa.addtocart_data.add(widget.bookData);
                      // setState(() {
                        
                      // });
                    } ,
            ),
          

            //////details text
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                   "${widget.bookData['detail']}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(
                          0xFF8891A5,
                        )),
                  ),
                ],
              ),
            ),
         
         
         ////
         ///drop down about author
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  ListTile(
            title: Text('About Author'),
            trailing: Icon(
              isExpanded ? Icons.expand_less : Icons.expand_more,
            ),
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
                  ),
                  if (isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(widget.bookData['aboutAuthor']),
            ),
                ],
              ),
          ),
         


          ////
         ///drop down about author
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  ListTile(
            title: Text('About Author'),
            trailing: Icon(
              isExpanded2 ? Icons.expand_less : Icons.expand_more,
            ),
            onTap: () {
              setState(() {
                isExpanded2 = !isExpanded2;
              });
            },
                  ),
                  if (isExpanded2)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(widget.bookData['aboutAuthor']),
            ),
                ],
              ),
          )


          ],
        ),
      ),
    );
  }
}
