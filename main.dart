import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shoes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CardWidget(
                    title: 'Nike SB Zoom Blazer\nMid Premium',
                    description: "78.795",
                    imagePath: 'assets/sepatu1.png',
                    backgroundColor: Color(0xFFd2c7e9), // Warna latar belakang
                  ),
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CardWidget(
                    title: 'Nike Air Zoom Pegasus\nMens Rood Running Shoes',
                    description: "79.995",
                    imagePath: 'assets/sepatu1.png',
                    backgroundColor: Color(0xFFd3f8f1), // Warna latar belakang
                  ),
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CardWidget(
                    title: 'Nike ZoomX Vaporfly\nMens Rood Racing Shoes',
                    description: "219.655",
                    imagePath: 'assets/sepatu1.png',
                    backgroundColor: Color(0xFFfbe8ea), // Warna latar belakang
                  ),
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CardWidget(
                    title: 'Nike Air Force 1 S50\nOlder Kids Shoes',
                    description: "78.295",
                    imagePath: 'assets/sepatu1.png',
                    backgroundColor: Color(0xFFe9e9e9), // Warna latar belakang
                  ),
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CardWidget(
                    title: 'Nike Waffle One\nMens Shoes',
                    description: "78.295",
                    imagePath: 'assets/sepatu1.png',
                    backgroundColor: Color(0xFFfcf3b2), // Warna latar belakang
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color backgroundColor;

  const CardWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(description),
          ],
        ),
      ),
    );
  }
}
