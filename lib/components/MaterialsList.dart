import 'package:flutter/material.dart';

import 'Tile.dart';



class MaterialsList extends StatelessWidget {
  const MaterialsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       Tile(),

       Tile(),
      ],
    );
  }
}
