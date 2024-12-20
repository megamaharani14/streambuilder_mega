import 'package:flutter/material.dart';
import 'stream.dart';
import 'random_bloc.dart';
// import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
      // home: const RandomScreen(),
    );
  }
}




class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});
 

  @override
  State<StreamHomePage> createState() => _StreamHomePage();
}

class _StreamHomePage extends State<StreamHomePage> {

}
 