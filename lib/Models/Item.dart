

class Item{
  final String name;
   bool isBought;


  Item({required this.name, this.isBought=false});


  void DoBuying(){

    isBought= !isBought;
  }


}