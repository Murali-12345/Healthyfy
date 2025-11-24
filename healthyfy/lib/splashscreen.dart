import 'package:flutter/material.dart';
import 'home.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green[400],
      // drawer: Drawer(
      //   child: Column(
      //     children: [Text("Col1", style: TextStyle(fontSize: 30),)],),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/healthylogo.png', width: 300,),
            Text("Welcome to Healthyfy!", style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w300),
            ),

            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                //print("ElevatedButton Pressed");
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[700], // Button background color
                foregroundColor: Colors.white, // Text color
                padding: EdgeInsets.symmetric(horizontal: 20,
                    vertical: 15), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
              child: Text(
                "Go To Home",
                style: TextStyle(
                  fontSize: 24, // Increased text size
                  fontWeight: FontWeight.bold, // Bold text
                ),
              ),
            ),
            // SizedBox(height: 20,),
            // CupertinoButton.filled( onPressed: null, child: Text("Go to Home!"), padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10), )
          ],
        ),
      ),
    );

  }
  

}
