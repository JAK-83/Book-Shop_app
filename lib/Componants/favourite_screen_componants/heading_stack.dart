import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class heading_stack extends StatefulWidget {
  final String totalLentOfFav;
  heading_stack({Key? key, required this.totalLentOfFav}) : super(key: key);

  @override
  State<heading_stack> createState() => _heading_stackState();
}

class _heading_stackState extends State<heading_stack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                 Container(
                  height: 100, 
                  width: MediaQuery.of(context).size.width, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20,top: 30,right:20),
                    child: Row(
                      children: [
                         Text("Favorite Items",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400
                    ),),
                  
                    Spacer(),
                    Icon(Icons.favorite_border,size: 40,)
                      ],
                    ),
                  )
                 ),
              
              Positioned(
                top: 40, 
                left: 327,
                child: Container(
                  height: 20, 
                  width: 20, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.red,
                  ),
                  child: Center(child: Text(widget.totalLentOfFav.toString(),
                  style:TextStyle(
                    color: Colors.white,

                  ) ,)),
                ),
              ),
              ],
            );
  }
}