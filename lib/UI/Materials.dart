import 'package:back_to_school/components/AddNewMaterial.dart';
import 'package:back_to_school/components/MaterialsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Materials extends StatelessWidget {
  const Materials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding:EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom
                    ),
                      child: AddNewMaterial())));
        },
        backgroundColor: Colors.indigo[600],
        child: Icon(Icons.add_box),
      ),
      backgroundColor: Colors.indigo[300],
      body:Container(
        padding: const EdgeInsets.only(
          top:60,
          left:30,
          right:30,
          bottom: 70,
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                    Icons.playlist_add_check_outlined,
                size: 50,
                color: Colors.white,),

                SizedBox(width: 20,),

                Text("Back To School"
                ,style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
                  ),
                )
              ],
            ),



            Text(" 5 materials", style: TextStyle(
             color: Colors.white,
             fontSize: 18,

            ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                child: MaterialsList(),
              ),
            )

          ],
        )
      )
    );
  }
}
