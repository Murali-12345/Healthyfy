import 'package:flutter/material.dart';
import 'package:healthyfy/profile.dart';
// import 'package:flutter/cupertino.dart';
import 'package:healthyfy/splashscreen.dart';
import 'package:healthyfy/veggies.dart';
import 'fruits.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Builder(
      builder: (context) {
        return Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    accountName: Text("The User", style: TextStyle(fontSize: 20),),
                    accountEmail: Text("abc@yahoo.what"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person_2, size: 50,),
                ),
                  decoration: BoxDecoration(color: Colors.green),
                ),
                ListTile(
                  leading: const Icon(Icons.home_outlined, size: 25,),
                  title: Text("Home", style: TextStyle(fontSize: 26),),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person_outline_rounded, size: 25,),
                  title: Text("Profile", style: TextStyle(fontSize: 26),),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                  },
                ),

                ListTile(
                  leading: const Icon(Icons.catching_pokemon_rounded, size: 25,),
                  title: Text("Categories", style: TextStyle(fontSize: 26),),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info_outline_rounded, size: 25,),
                  title: Text("About Us", style: TextStyle(fontSize: 26),),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                )

              ],
            ),
          ),
          appBar: AppBar(title: Text("Healthyfy 🍀",),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_shopping_cart_outlined, size: 30,),
              color: Colors.black,
              tooltip: 'Search',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            )

          ],),

          body: Column(
            children: [
              SizedBox(height: 20,child: Text("Hello there!", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),),),
              Container(
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/banner.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //categories section
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Categories", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child:Column(
                        children: [
                          _buildCategoryList("Fruits", 'assets/images/fruits.png', context, Fruits()),
                          _buildCategoryList("Veggies", 'assets/images/veg.png', context, Veggies()),
                          _buildCategoryList("Snacks", 'assets/images/snacks.png', context, Fruits()),
                          // _buildCategoryList("Cookies", 'assets/images/cookies.png', context),
                          // _buildCategoryList("Dairy", 'assets/images/dairy.png', context),



                          // CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/images/fruits.png'),
                          // ),
                          // Text("Fruits", style: TextStyle(fontWeight: FontWeight.w300),)

                        ],
                      ),
                    )
                  ],
                )
              )
            ],
          ),

          bottomSheet:Padding( padding: EdgeInsets.all(0),
            child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => const Splashscreen()));
                }, child: Text("Go back?")),
          ) ,



        );
      }
    );
  }

}
Widget _buildCategoryList(String name, String url, BuildContext context, Widget link){
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => link));
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [

          CircleAvatar(radius: 50, backgroundImage: AssetImage(url),
          ),
          Text(name, style: TextStyle(fontWeight: FontWeight.w300),)
        ],
      ),
    ),
  );
}

