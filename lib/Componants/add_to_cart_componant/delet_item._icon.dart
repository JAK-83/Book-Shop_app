// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class delet_icon extends StatefulWidget {
//   delet_icon({Key? key}) : super(key: key);

//   @override
//   State<delet_icon> createState() => _delet_iconState();
// }

// class _delet_iconState extends State<delet_icon> {
//   @override
//   Widget build(BuildContext context) {
//     return  Positioned(
//                               left: 290,
//                               // bottom: 1,
//                               child: GestureDetector(
//                                   onTap: () {

//                                    showDialog(context: context, 
//                                    builder:(BuildContext context){
//                                     return AlertDialog(
//                                       title: Text("Delete Item"),
//                                       content: Text("Item Will Be Delete From Cart"),
//                                       actions: [
//                                         TextButton(onPressed: (){
//                                           Dataa.addtocart_data.removeAt(index);
//                                            Navigator.pop(context);
//                                           setState(() {
//                                             _calculateSubtotal();
                                            
//                                           });
//                                         }, child: Text("Delete")),

//                                         TextButton(onPressed: (){
//                                          Navigator.pop(context);
//                                         }, child: Text("Cancel")),
//                                       ],
//                                     );
//                                    });

                                   
//                                     setState(() {
//                                       _calculateSubtotal();
//                                     });
//                                   },
//                                   child: const Icon(
//                                     Icons.delete,
//                                   )));
//   }
// }