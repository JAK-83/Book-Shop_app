import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:project_01/Screens/basic%20screen/get_start_src.dart';
// ignore: unused_import
import 'package:project_01/Screens/home_screen.dart';
// ignore: unused_import
import 'package:project_01/Screens/other%20screens/product_screen.dart';
// ignore: unused_import
import 'package:project_01/Screens/other%20screens/category_screen.dart';
// ignore: unused_import
import 'Componants/Home Scr Componants/search_bar_scr.dart';
// ignore: unused_import
import 'Screens/other screens/bottom_nav_bar.dart';
// ignore: unused_import
import 'Screens/other screens/product_detail_screen.dart';
import 'data/home_scr_data/data_base.dart';

void main() {
  runApp( AllInOne());
}
class AllInOne extends StatefulWidget {
   AllInOne({Key? key}) : super(key: key);

  @override

  State<AllInOne> createState() => _AllInOneState();
}

class _AllInOneState extends State<AllInOne> {
  Dataa bigdata =Dataa();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home://bottom_nav_barr()
       //search_barr_scr()
          // Home_screen(),
          get_start_src(),
         // detail_screen(),
         // category_screen(),
        
    );
  }
}