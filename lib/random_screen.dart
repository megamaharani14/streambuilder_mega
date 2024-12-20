import 'package:flutter/material.dart';
import 'random_bloc.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  final _bloc = RandomNumberBloc(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Number Screen'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _bloc.randomNumber, // Mengambil stream dari RandomBloc
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Error occurred!');
            }
            return Text(
              'Random Number: ${snapshot.data}',
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _bloc.generateRandom.add(null), // Memicu random number
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
