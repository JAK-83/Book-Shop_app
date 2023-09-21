
import 'package:flutter/material.dart';

import '../../Utills/def_colors.dart';
class currentPrice extends StatefulWidget {
  final String currentprice;
  final String percentoff;
  final String regPrice;
  currentPrice({Key? key, required this.currentprice, required this.percentoff, required this.regPrice}) : super(key: key);

  @override
  State<currentPrice> createState() => _currentPriceState();
}

class _currentPriceState extends State<currentPrice> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(left: 26, top: 14, right: 26),
              child: Row(
                children: [
                  //current price txt
                  Text(
                    "\$${ widget.currentprice}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Rang.product_detail_priceTex_Color,
                    ),
                  ),

                  SizedBox(
                    width: 14,
                  ),
                  ///////
                  ///discount priceor off price
                  Container(
                    height: 24,
                    width: 84,
                    decoration: BoxDecoration(
                      color: Rang.product_detail_off_price_container_Color,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Center(
                      child: Text(
                        "${widget.percentoff}% OFF",
                        style: TextStyle(
                            color: Rang.product_detail_off_priceTex_Color,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),

                  Spacer(),
                  //////total price before discount
                  Text(
                   "Reg: \$${widget.regPrice} USD",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Rang.product_detail_total_price_Color),
                  ),
                ],
              ),
            )

;
  }
}