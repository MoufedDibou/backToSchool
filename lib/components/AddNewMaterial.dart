import 'package:flutter/material.dart';

class AddNewMaterial extends StatelessWidget {
  const AddNewMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Add Material",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.indigo) ,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,),
          TextButton(onPressed: (){},
          child: Text("Add"),
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey,
            primary: Colors.white
          ),)
        ],
      ),
    );
  }
}
