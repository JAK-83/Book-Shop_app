import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drop_down_menu extends StatefulWidget {
  const drop_down_menu({Key? key}) : super(key: key);

  @override
  State<drop_down_menu> createState() => _drop_down_menuState();
}

class _drop_down_menuState extends State<drop_down_menu> {
  String selectedValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          DropdownButton<String>(
           
            icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
            borderRadius: BorderRadius.circular(20),
            style:  TextStyle(
              color: Colors.black ,
            ),
            
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value!;
              });
            },
            items: <String>[
              'Option 1',
              'Option 2',
              'Option 3',
              'Option 4',
              'Option 5',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Spacer(),
          DropdownButton<String>(
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value!;
              });
            },
            items: <String>[
              'Option 1',
              'Option 2',
              'Option 3',
              'Option 4',
              'Option 5',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
