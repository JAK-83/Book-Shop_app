import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class add_new_address extends StatefulWidget {
  add_new_address({Key? key}) : super(key: key);

  @override
  State<add_new_address> createState() => _add_new_addressState();
}

class _add_new_addressState extends State<add_new_address> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90, 
        width: 375, 
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 240, 240),
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //add icon
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.orange,
                  )
                ),
                child: Icon(Icons.add,size: 15,color: Colors.orange,),
        
              ),
              SizedBox(width: 8,),
              ////text
              Text("Add New Address",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),),
            ],
          ),
        ),
       );
  }
}