import 'package:back_to_school/Models/Item.dart';
import 'package:flutter/material.dart';

import 'Tile.dart';



class MaterialsList extends StatefulWidget {
  const MaterialsList({Key? key}) : super(key: key);

  @override
  State<MaterialsList> createState() => _MaterialsListState();
}

class _MaterialsListState extends State<MaterialsList> {
  List<Item> items=[
    Item(name: "pencils"),
    Item(name: "Rulers"),
    Item(name: "bag"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
     itemBuilder: (context,index){
        return Tile(
          isChecked: items[index].isBought,
          itemName: items[index].name,
          changeChecker:  (value){

            setState(() {
              items[index].DoBuying();
            });
          },
        );
     },



     //   Tile( isChecked: items[2].isBought, itemName:items[2].name),



    );
  }
}
