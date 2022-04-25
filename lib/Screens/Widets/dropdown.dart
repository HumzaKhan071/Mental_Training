import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
// Initial Selected Value
  String dropdownvalue = 'Last Week';

// List of items in our dropdown menu
  var items = [
    'Last Week',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(

        // Initial Value
        value: dropdownvalue,
       

        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        });
  }
}
