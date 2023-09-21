import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class horizontal_slied_sugestion extends StatefulWidget {
  final VoidCallback oontap;
  horizontal_slied_sugestion({Key? key, required this.oontap}) : super(key: key);

  @override
  State<horizontal_slied_sugestion> createState() => _horizontal_slied_sugestionState();
}

class _horizontal_slied_sugestionState extends State<horizontal_slied_sugestion> {
  @override
  Widget build(BuildContext context) {
     int selectedIndex = -1;
    List horizantal_sugestions=["Popular","Offer","Low Price","New Eddition","Old Eddition"];
    // List<bool> isSelected = List.generate(horizantal_sugestions.length, (index) => false);  //keep track selected item
   int slectedIndex=-1;
    return  Container(
              margin:const EdgeInsets.only(top: 26,left: 24),
              height:  40 , // MediaQuery.of(context).size.height*0.15 ,
              width: MediaQuery.of(context).size.width ,
             // color: Colors.yellow,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: horizantal_sugestions.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return GestureDetector(
                onTap:widget.oontap ,
                child: Container(
                margin:const EdgeInsets.only(right: 8),
                    height: 50,
                   width: 90,
                   decoration: BoxDecoration(
                    color:   slectedIndex==index
                    ? Colors.blue // Change color when selected
                    : Colors.grey, // Default color  ,//Rang.horizontal_sugestion_bg_Color,
                    borderRadius: BorderRadius.circular(20)
                   ),
                   child: Center(child: Text(horizantal_sugestions[index],
                  style: TextStyle(
                    color: slectedIndex==index ? Colors.white : Colors.black,
                  ),)),
                  
              ),
              );


                }),
            );
  }
}