import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class profile_screen extends StatefulWidget {
  profile_screen({Key? key}) : super(key: key);

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
        child: Column(
      
        children: [
           /////heading icons
         Row(
          children: [
            Image.asset("assets/icons/left.png"),
        const    SizedBox(width: 30,),
          const  Text("Profile",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15
            ),),
            Spacer(),
            Icon(Icons.edit)
          ],
          
         ),
      
      ////dp
      Stack(
        children: [
          Container(
        margin: EdgeInsets.only(top: 60),
        height: 100, 
        width: 100, 
        decoration:BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage("assets/icons/dp.PNG"),fit: BoxFit.cover)
        )
      ),
       
       Positioned(
        top: 65, 
        left: 76,
         child: Container(
          height:16, 
          width: 16,  
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
         ),
       ),
        ],
        
      ),
      SizedBox(height: 15,),
      //name
      Text("JAMEEL AHMED",style: TextStyle(
        fontWeight: FontWeight.w600
      ),),
      
      ////info container
      Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(left: 10,right: 10),
             height: 200, 
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
              color: Colors.yellow.withOpacity(.2),
              borderRadius: BorderRadius.circular(20)
             ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                 Row(
                  children: [ 
                    Text("Home Adress ",style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width:50 ,),
                    Text("36 green way.."),
                  ],
                 ),
 SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text("Office Adress ",style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width:48 ,),
                    Text("Medical road,Halal lab.."),
                  ],
                 ),
 SizedBox(height: 20,),
               Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text("Phone NO:",style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width:65 ,),
                    Text("03041318424"),
                  ],
                 ),
            SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text("Email Adress",style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width:50 ,),
                    Text("jameelkhoso4@gmail.com"),
                  ],
                 ),
             
              ],
             ),
      ),



        ],
      
      
      
        ),
      ),
    );
  }
}