//import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Componants/add_to_cart_componant/sub_total.dart';
import '../../Componants/checkout screen componant/heading_row.dart';
import '../../Utills/def_colors.dart';
import '../../data/home_scr_data/data_base.dart';

class add_card_screen extends StatefulWidget {
   int total;
  add_card_screen({Key? key, required this.total}) : super(key: key);

  @override
  State<add_card_screen> createState() => _add_card_screenState();
}

class _add_card_screenState extends State<add_card_screen> {
  TextEditingController cardholdername=TextEditingController();
  TextEditingController cardnumber=TextEditingController();
  TextEditingController expdate=TextEditingController();
  TextEditingController csv_controller=TextEditingController();
    void dispose() {
    // Dispose of the controller when it's no longer needed
    csv_controller.dispose();
    super.dispose();
  }
  int ftotal=0;
   bool isLoading = false;
  bool showCheckIcon = false;

  Future<void> simulateDelayedOperation() async {
    
    setState(() {
      isLoading = true;
    });

    await Future.delayed(Duration(seconds: 5));

    setState(() {
      isLoading = false;
      showCheckIcon = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            

Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 24),
            child: heading(
              title: "Add Card",
            ),
          ),

          /////////////
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///card holder name
                Text(
                  "CARD HOLDER NAME",
                  style: TextStyle(
                      color: Rang.addNewCard_subtitle_Color,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
                SizedBox(
                  width: 335,
                  child: TextField(
                    controller: cardholdername,
                  ),
                ),

                SizedBox(
                  height: 31,
                ),

                ///card number
                Text(
                  "CARD NUMBER",
                  style: TextStyle(
                      color: Rang.addNewCard_subtitle_Color,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
                SizedBox(
                  width: 335,
                  child: TextField(
                    controller: cardnumber,
                  ),
                ),

                SizedBox(
                  height: 31,
                ),
                /////EX DATE + CSV NUMBER
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///eX DATE
                    ///
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EXP DATE",
                          style: TextStyle(
                              color: Rang.addNewCard_subtitle_Color,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                         SizedBox(
                          width: 150,
                          child: TextField(
                            controller: expdate,
                          ),
                        ),
                      ],
                    ),

                    ///CSV number
               const     SizedBox(
                      width: 10,
                    ),

                    ///
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CSV",
                          style: TextStyle(
                            
                              color: Rang.addNewCard_subtitle_Color,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                     SizedBox(
                          width: 150,
                          child: TextField(
                           controller:csv_controller ,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
       
       
       SizedBox(height: 115,),
       /////sub total
       syb_total(
        onntap: () {
     
          if(cardholdername.text.isEmpty || cardnumber.text.isEmpty || expdate.text.isEmpty || csv_controller.text.isEmpty){
           showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                title: Text("Please Fill Information"),
                actions: [
                  TextButton(onPressed: (){
                     Navigator.pop(context);
                  }, child: Text("OK"))
                ],
              );
            });
           
           
           
            
          }else{
           
             Dataa.addtocart_data.clear();
          ftotal=widget.total;
          widget.total=0;
         
           simulateDelayedOperation();
           setState(() {
            
          });

           
          }
         
         
          
          
        },
        buttoontitle: "Make Payment",
        final_total: widget.total, 
        deliveryChargis: 10,
       )
        ],
      ),

           //////////////////
 
     Positioned(
      top: 250, 
      left: 60,
      right: 30,
       child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (isLoading)
                SizedBox(
                  width: 150, 
                  height: 150,
                  child: CircularProgressIndicator(
                    strokeWidth: 10,
                  ),
                )
              else if (showCheckIcon)
                Container(
                  height: 170, 
                  width: 300, 
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 228, 228),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                                        Icons.check,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                        ),
                      )
                    ,
                    SizedBox(height: 20,),
                    Text("Payment Successfull!!",style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                    ),),
                     SizedBox(height: 20,),
                    Text("Paid Ammount: ${ftotal+10}",style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                    ),),
                    ],
                  ),
                ),
             
            ],
          ),
     ),
  

          ],
        ),

      )    );
  }
}
