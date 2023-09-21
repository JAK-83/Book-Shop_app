import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_01/Utills/imagess.dart';
import '../../Componants/add_to_cart_componant/heading_with_discount.dart';
import '../../Componants/add_to_cart_componant/sub_total.dart';
import '../../data/home_scr_data/data_base.dart';
import 'check_out_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart'; // Import the date and time formatting library


class add_to_cart_Scr extends StatefulWidget {
  add_to_cart_Scr({
    Key? key,
  }) : super(key: key);

  @override
  State<add_to_cart_Scr> createState() => _add_to_cart_ScrState();
}

class _add_to_cart_ScrState extends State<add_to_cart_Scr> {
  
 int selectedIndex = -1; // Initialize with an invalid index.
  int deliveryCharg = 10;
  int finalTotal = 0;
  void initState() {
    super.initState();
    _calculateSubtotal();
  }

  void _calculateSubtotal() {
    // _icreament=1;
    finalTotal = 0;
    for (var item in Dataa.addtocart_data) {
      final int bookPrice = item['price'];
      final int bookQuantity = item['quantity'];
      finalTotal += (bookPrice * bookQuantity);
    }
  }

////////create map for adding order into order_hitory list with date time
void _addToOrderHistory(Map<String, dynamic> product) {
  final DateTime now = DateTime.now();
  final String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);

  // Create a map containing the product and the timestamp
  final Map<String, dynamic> orderItem = {
    'product': product,
    'timestamp': formattedDate,
  };

  setState(() {
    Dataa.orderHistory.add(orderItem);
  });

  // ScaffoldMessenger.of(context).showSnackBar(
  //   SnackBar(
  //     content: Text('Added to Order History'),
  //   ),
  // );
}
///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(child: heading_with_discount()),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                         //heading_with_discount(),
                
                        ////body
                        Dataa.addtocart_data.isEmpty
                  ?
                  Stack(
                      children: [
                        const Positioned(
                            top: 220,
                            left: 150,
                            child: Text(
                              "Empty Cart",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )),
                        Center(
                            child: Image.asset(
                          Pics_collection.empty_cart_icon,
                          height: 250,
                          width: 200,
                        )),
                      ],
                    )
                  : ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: Dataa
                          .addtocart_data.length, // widget.addcartList.length, //
                      itemBuilder: (BuildContext context, int index) {
                        final item = Dataa.addtocart_data[ index];
                         // Determine if this item is selected
                      selectedIndex = index; 
                        return Container(
                          margin:
                              const EdgeInsets.only(left: 24, right: 24, bottom: 2),
                          height: 100,
                          // color: Colors.red,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        ///img
                                        Container(
                                          height: 60,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    item['Book_Cover_url'])),
                                          ),
                                        ),
                
                                        const SizedBox(
                                          width: 31,
                                        ),
                
                                        ///name price txt
                                        Column(
                                          children: [
                                            Text(
                                              item['BookName'].toString(),
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            ),
                                            Text(
                                              "\$${item['price'].toString()}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                
                                        // minus/reduse icone button
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (item['quantity'] > 1) {
                                                item['quantity']--;
                                                _calculateSubtotal();
                                              }
                                            });
                                          },
                                          child: const CircleAvatar(
                                            backgroundColor: Color(0xFFF8F9FB),
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                
                                        const SizedBox(width: 11),
                
                                        ////display quantity
                                        Text("${item['quantity'].toString()}"),
                
                                        const SizedBox(width: 11),
                                        //add icon button
                
                                        GestureDetector(
                                          onTap: () {
                                            item['quantity']++;
                
                                            _calculateSubtotal();
                                            setState(() {});
                                          },
                                          child: const CircleAvatar(
                                            backgroundColor: Color(0xFFF8F9FB),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Divider(),
                                  ],
                                ),
                              ),
                
                              //////delet icon
                              Positioned(
                                  left: 290,
                                  // bottom: 1,
                                  child: GestureDetector(
                                      onTap: () {
                
                                       showDialog(context: context, 
                                       builder:(BuildContext context){
                                        return AlertDialog(
                                          title: Text("Delete Item"),
                                          content: Text("Item Will Be Delete From Cart"),
                                          actions: [
                                            TextButton(onPressed: (){
                                              Dataa.addtocart_data.removeAt(index);
                                               ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(
                                                duration: Duration(microseconds: 500000),
                                               content: Text('Product Has Been Removed'),
                                                  ),
                                                     );
                                               Navigator.pop(context);
                                              setState(() {
                                                _calculateSubtotal();
                                                
                                              });
                                            }, child: Text("Delete")),
                
                                            TextButton(onPressed: (){
                                             Navigator.pop(context);
                                            }, child: Text("Cancel")),
                                          ],
                                        );
                                       });
                
                                       
                                        setState(() {
                                          _calculateSubtotal();
                                        });
                                      },
                                      child: const Icon(
                                        Icons.delete,
                                      )))
                            ],
                          ),
                        );
                      }),
                
                        ///subtotal container
                       syb_total(
                        onntap: 
                         () async{
                  if( Dataa.addtocart_data.length ==0){
                    showDialog(context: context, builder: (BuildContext context){
                return    AlertDialog(
                      title: Text("Please Add Some Product"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Ok"))
                      ],
                    );
                   });
                  }else{
                  _addToOrderHistory(Dataa.addtocart_data[selectedIndex]);
       await             Navigator.push(context,MaterialPageRoute(builder: (context)=>check_out_screen(total: finalTotal,)));
                      print(Dataa.orderHistory.length);
                      setState(() {
                        
                      });

                  }
      //             Dataa.addtocart_data.length ==0 ?
      //              showDialog(context: context, builder: (BuildContext context){
      //           return    AlertDialog(
      //                 title: Text("Please Add Some Product"),
      //                 actions: [
      //                   TextButton(onPressed: (){
      //                     Navigator.pop(context);
      //                   }, child: Text("Ok"))
      //                 ],
      //               );
      //              })
      //               :
      //                print( finalTotal);
      //                _addToOrderHistory(Dataa.addtocart_data[selectedIndex]);
      //  await             Navigator.push(context,MaterialPageRoute(builder: (context)=>check_out_screen(total: finalTotal,)));
      //                 print(Dataa.orderHistory.length);
      //                 setState(() {
                        
      //                 });
                },
                        buttoontitle: "Proceed To checkout",
                        final_total:    Dataa.addtocart_data.length==0 ?   finalTotal=0 :finalTotal,
                        deliveryChargis:Dataa.addtocart_data.length==0 ?  deliveryCharg=0:deliveryCharg ,
                       ),
                      ],
                    ),
                  ),
              ),
            ),
          ],
        ),
    );
  }
}
