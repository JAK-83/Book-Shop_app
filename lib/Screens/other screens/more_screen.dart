import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_01/Screens/other%20screens/profile_screen.dart';

import '../../Componants/more screen componant/container.dart';
import 'order_screen.dart';
class more_screen extends StatefulWidget {
  more_screen({Key? key}) : super(key: key);

  @override
  State<more_screen> createState() => _more_screenState();
}

class _more_screenState extends State<more_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70,left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              ///profile
             cotainer(
              oontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>profile_screen()));
              },
              title: "Profile",
              micon:Icons.person ,
             ),
     
       ///profile
             cotainer(
              oontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>order_screen()));
              },
              title: "My Orders",
              micon:Icons.shopping_bag_outlined ,
             ),
      
       ///profile
             cotainer(
              oontap: (){},
              title: "Theme",
              micon:Icons.color_lens ,
             ),

             ///profile
             cotainer(
              oontap: (){},
              title: "Logout",
              micon:Icons.logout ,
             ),
      
      
      
      
      
          ],
        ),
      ),
    );
  }
}