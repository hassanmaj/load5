import 'package:flutter/material.dart';

void main() {
  runApp(SampleApp());
  
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Sample title'),
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.sentiment_satisfied_alt),
            onPressed: () {
              // حدث عند الضغط على الأيقونة
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.directions_bike),
              onPressed: () {
                // حدث عند الضغط على أيقونة الدراجة
              },
            ),
            IconButton(
              icon: Icon(Icons.directions_bus),
              onPressed: () {
                // حدث عند الضغط على أيقونة الحافلة
              },
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Menu Item 1'),
                ),
                PopupMenuItem(
                  child: Text('Menu Item 2'),
                ),
              ],
            ),
          ],
        ),
        body: Center(
          child: Text(
            'Hello',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black87, // اللون الخلفي للشاشة
      ),
    );
  }
}
