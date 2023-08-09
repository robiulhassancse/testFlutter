import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Keso'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              color: Colors.amber,
              child: Text(
                'Robiul',
                style: TextStyle(fontSize: 30, color: Colors.green),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              // padding: EdgeInsets.all(6),
              alignment: Alignment.center,

              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.amber, width: 6),
                  borderRadius: BorderRadius.circular(100)),
              child: Text(
                'Robiul',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Icon(
              Icons.add_a_photo_outlined,
              color: Colors.red,
              size: 50,
              weight: 800,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset(
                'images/1.jpg',
                width: 200,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,

                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)
                ),
                onPressed: () {
                  print('hello ');
                },
                child: Text('Add', style: TextStyle(
                  fontSize: 25,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
