import 'package:flutter/material.dart';
class Veggies extends StatelessWidget {
  const Veggies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Healthyfy 🍀", ),),
        body: Center(
            child: GridView.count(crossAxisCount: 2,crossAxisSpacing: 10, mainAxisSpacing: 10,
              padding: EdgeInsets.all(20),
              childAspectRatio: 2/3,
              children: <Widget>[
                _veggiesdata("Veggies", "assets/images/apple.png", "20"),
                _veggiesdata("Apple", "assets/images/apple.png", "20"),
                _veggiesdata("Apple", "assets/images/apple.png", "20"),
                _veggiesdata("Apple", "assets/images/apple.png", "20"),
                _veggiesdata("Apple", "assets/images/apple.png", "20"),
                _veggiesdata("Apple", "assets/images/apple.png", "20"),
                _veggiesdata("Apple", "assets/images/apple.png", "20"),

              ],)
        )
    );
  }
}
Widget _veggiesdata(String name, String path, String price){
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
        Text(name), Text(price)

      ],
    ),
  );
}


