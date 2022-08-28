import 'package:flutter/material.dart';

class Tile extends StatelessWidget {



 final bool  isChecked;
 final String itemName;
 final void Function(bool?) changeChecker;

 Tile({required this.isChecked, required this.itemName, required this.changeChecker});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(itemName,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),
      ),
      trailing:Checkbox(
        onChanged:changeChecker ,


        value: isChecked,
        activeColor: Colors.teal,

      ) ,
    );
  }
}







