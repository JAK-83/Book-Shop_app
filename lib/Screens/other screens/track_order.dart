import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class track_order extends StatefulWidget {
   int orderid=0;
  track_order({Key? key, required this.orderid}) : super(key: key);

  @override
  State<track_order> createState() => _track_orderState();
}

class _track_orderState extends State<track_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.red,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38,left: 24,right: 24),
            child: Column(
              children: [
                //heading row icon
                     Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/icons/left.png")),
                          SizedBox(width: 21,),
                          Text("Track Order",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                          ),),

                      ],
                     ),
              
                //////map stack
                Stack(
                  children: [
                    ///bg container
                     Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 430, 
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                       // color: Colors.green,
                      ),
                    ),
                    ///
                  ///map img
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 400, 
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                        image: DecorationImage(image: AssetImage("assets/icons/map.PNG"),fit: BoxFit.cover)
                      ),
                    ),

                    ///rider info
                    Positioned(
                      top: 370,
                      right: 1,
                      left: 1,
                      child: Container(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        height: 81, 
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 227, 229, 231),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          children: [
                            ///dp
                             Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/2635314/pexels-photo-2635314.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                             SizedBox(width: 13,),
                          //////rider name
                       const Padding(
                          padding:  EdgeInsets.only(top: 20),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                Text("Delivery Man",style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFF616A7D),
                                ),),
                        
                                 Text("Rakibul Hassan",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                
                                ),),
                               ],
                            ),
                        ),
                         
                         ////message container
                         Spacer(),
                             Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFF2A4BA0),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(),
                                
                                ),
                                child: Icon(Icons.message,color: Colors.white,),
                          ),
                    
                         
                          ],
                        ),
                      ),
                    )
                  ],
                ),
             
             
             ////down body
          const   Row(
              children: [
                Icon(Icons.access_time),
                 SizedBox(width: 16,),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivery in",style: TextStyle(
                        fontWeight: FontWeight.w400 ,
                        fontSize: 14,
                        color: Color(0xFF616A7D)
                      ),),
                      SizedBox(height: 3),
                      Text("25 Min",style: TextStyle(
                        fontWeight: FontWeight.w600 ,
                        fontSize: 14,
                        
                      ),),
                    ],
                  ),
                ),
              ],
             ),
             /////
     const     Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 16,),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivery Address",style: TextStyle(
                        fontWeight: FontWeight.w400 ,
                        fontSize: 14,
                        color: Color(0xFF616A7D)
                      ),),
                      SizedBox(height: 3),
                      Text("37 New line, Sunamganj",style: TextStyle(
                        fontWeight: FontWeight.w600 ,
                        fontSize: 14,
                      ),),
                    ],
                  ),
                ),
              ],
             ),
             


             
              ],
            ),
          ),
SizedBox(height: 24,),
////last oerder id container
             Container(
              height: 83, 
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                //color: Colors.red,
                color: Color.fromARGB(255, 239, 240, 241),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                
              ),
              child:  Column(
                children: [
                  ///divider
                  Padding(
                    padding: EdgeInsets.only(left: 150,right: 150,top: 10),
                    child: Divider(
                      
                      thickness: 10,
                    ),
                  ),
                
                ////id row 
                Padding(
                  padding: EdgeInsets.only(left: 24,top:27),
                  child: Row(
                    children: [
                      Text("Order Details",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),),
                SizedBox(width: 10,),
                      Text("ID: #342${widget.orderid}",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),
                ),
                
                ],
              ),
             ),

        ],
      ),
    );
  }
}