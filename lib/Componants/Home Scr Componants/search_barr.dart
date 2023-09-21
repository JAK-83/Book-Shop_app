//this wil disapear when user click on search barr
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Utills/def_colors.dart';

class search_barr extends StatefulWidget {
  final VoidCallback oontap;

  const search_barr({Key? key, required this.oontap}) : super(key: key);

  @override
  State<search_barr> createState() => _search_barrState();
}

class _search_barrState extends State<search_barr> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 28),
      height: MediaQuery.of(context).size.height * 0.070,
      width: MediaQuery.of(context).size.width * 0.94,
      decoration: BoxDecoration(
          color: Rang.search_barr_color,
          borderRadius: BorderRadius.circular(28)),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            // color: Colors.red,
            height: 30,
            width: 200,
            child: TextField(
             // controller: searchController,
             // onChanged: filterData,
              onTap: widget.oontap,
              decoration: InputDecoration(
                labelText: 'Search Products or Store',
                // prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
