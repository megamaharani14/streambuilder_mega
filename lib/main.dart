import 'package:flutter/material.dart';
import 'stream.dart';
import 'package:streambuilder_mega/random_bloc.dart';
import 'dart:async';

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
    final RandomNumberBloc _bloc = RandomNumberBloc();
 @override
  void dispose(){
    _bloc.dispose();
    super.dispose();
  }
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Number'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _bloc.randomNumber,
          initialData: 0,
          builder: (context, snapshot){
            return Text(
              'Random Number : ${snapshot.data}',
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _bloc.generateRandom.add(null),
        child: const Icon(Icons.refresh),
      ),
    );
  }  
      
}
 