import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class address_container extends StatefulWidget {
  final String title;
  final String adress;
  final VoidCallback oontap;
  final Color ccolor;
  final bool checkk;
  final Color borderColor;


  address_container({Key? key, required this.title, required this.adress, required this.oontap, required this.ccolor, required this.checkk, required this.borderColor})
      : super(key: key);

  @override
  State<address_container> createState() => _address_containerState();
}

class _address_containerState extends State<address_container> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.oontap,
      child: Container(
        padding: EdgeInsets.all(20),
        height: 120,
        width: 357,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
             border: Border.all(
              color: widget.borderColor,
              width: 2,
             )),
        child: Stack(
          children: [
            Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///tick icone + hom text
            Row(
              children: [
                Text(widget.title), const Spacer(),
               
                 
                 
                 ],
            ),
    
            const SizedBox(
              height: 18,
            ),
    
            ////// adress
            Row(
              children: [
                Text(
                  widget.adress,
                  style:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                const Text(
                  "Edit",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF2A4BA0),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),

          //////check icon
           Positioned(
            
            left: 235,
             child: Visibility(
                    visible: widget.checkk,
                    child:SizedBox(
                      height: 22,
                      child: CircleAvatar(
                      
                        backgroundColor: widget.ccolor,
                        child: Icon(Icons.check,size: 20,),),
                    )
                     ),
           ),

          ],
        ),
      ),
    );
  }
}
