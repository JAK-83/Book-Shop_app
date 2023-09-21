import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class cotainer extends StatefulWidget {
  final String title;
  final  IconData micon;
  final VoidCallback oontap;
  cotainer({Key? key, required this.title, required this.micon, required this.oontap}) : super(key: key);

  @override
  State<cotainer> createState() => _cotainerState();
}

class _cotainerState extends State<cotainer> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.oontap,
      child: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height*.1, 
                width:  MediaQuery.of(context).size.width*.7,  
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(widget.title,style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 15
                  ),),
                  Spacer(),
                  Icon(widget.micon)
                ],),
              ),
    );
  }
}