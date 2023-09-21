import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class bookTitle extends StatefulWidget {
  final String bookTitl;
  bookTitle({Key? key, required this.bookTitl}) : super(key: key);

  @override
  State<bookTitle> createState() => _bookTitleState();
}

class _bookTitleState extends State<bookTitle> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(left: 21, top: 5),
              child: Column(
                children: [
                  Text(
                     widget.bookTitl,  // "${widget.bookData.length.toString()}"  ,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
  }
}