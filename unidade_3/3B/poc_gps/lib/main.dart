import 'package:flutter/material.dart';
import 'package:poc_gps/screens/place_form_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unidade 3 - 3B GPS',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: PlaceFormScreen(),
    );
  }
}
