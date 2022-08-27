import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Note books"),
      trailing: Checkbox(
        onChanged: null,
        value: false,

      ),
    );
  }
}
