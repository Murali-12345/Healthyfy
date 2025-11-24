import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthyfy/cart.dart';
class Fruits extends StatelessWidget {
  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Healthyfy 🍀", ),),
      body: Center(
          child: GridView.count(crossAxisCount: 2,crossAxisSpacing: 10, mainAxisSpacing: 10,
          padding: EdgeInsets.all(20),
          childAspectRatio: 2.5/4,
          children: <Widget>[

            _fruitdata("Apple", "assets/images/apple.png", "20", context),
            _fruitdata("Apple", "assets/images/apple.png", "20", context),
            _fruitdata("Apple", "assets/images/apple.png", "20", context),
            _fruitdata("Apple", "assets/images/apple.png", "20", context),
            _fruitdata("Apple", "assets/images/apple.png", "20", context),
            _fruitdata("Apple", "assets/images/apple.png", "20", context),
            _fruitdata("Apple", "assets/images/apple.png", "20", context),
          ],)
      )
    );
  }
}
Widget _fruitdata(String name, String path, String price, BuildContext context){
  return Container(
    child: Column(
      children: [

      Container(
      height: 200, width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.25),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(path),
            fit: BoxFit.cover),
      ),
      margin: EdgeInsets.all(10),
    ),
    Text(name), Text(price),
        CupertinoButton(child: Text("Add to cart"),
            onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
            })

    ],
  ),
  );
}