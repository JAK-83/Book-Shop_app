import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Componants/checkout screen componant/add_new_address_container.dart';
import '../../Componants/checkout screen componant/address_container.dart';
import '../../Componants/checkout screen componant/heading_row.dart';
import '../../Componants/re_use_button/re_use_button.dart';
import '../../data/home_scr_data/data_base.dart';
import 'add_new_card_screen.dart';

class check_out_screen extends StatefulWidget {
  final int total;
  check_out_screen({Key? key, required this.total}) : super(key: key);

  @override
  State<check_out_screen> createState() => _check_out_screenState();
}

class _check_out_screenState extends State<check_out_screen> {
  bool checkkk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ////backIcon
            Padding(
              padding: const EdgeInsets.only(top: 45, bottom: 60),
              child: heading(
                title: "Shoping Cart (${Dataa.addtocart_data.length.toString()})",
              ),
            ),
            ////Delivery Address txt
            const Text(
              "Delivery Address",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            const SizedBox(height: 24),
            /////home address container
            address_container(
              oontap: () {
                setState(() {
                  checkkk = false;
                });
              },
              borderColor: checkkk == false ? Colors.orange : Colors.white,
              checkk: checkkk == false ? true : false,
              ccolor: Colors.orange,
              title: "Home",
              adress: "Karachi",
            ),

            const SizedBox(height: 24),

            /////office address container
            address_container(
              oontap: () {
                setState(() {
                  checkkk = true;
                });
              },
              borderColor: checkkk == true ? Colors.orange : Colors.white,
              checkk: checkkk == true ? true : false,
              ccolor: Colors.orange,
              title: "Office",
              adress: "Medical road, Halal lab,\nSunamganj",
            ),

            const SizedBox(
              height: 36,
            ),
            ////add icon + addNewAdress
            add_new_address(),

            SizedBox(
              height: 80,
            ),
            //////add card button
            re_use_button(
              title: "Add Card",
              oontap: ()async {
           await    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => add_card_screen(total: widget.total,)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
