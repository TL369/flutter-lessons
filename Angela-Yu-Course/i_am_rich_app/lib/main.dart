import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Container();
=======
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('I am Rich'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
<<<<<<< HEAD
          image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
=======
          image: AssetImage('images/diamond.png'),
>>>>>>> angela
        ),
      ),
    );
>>>>>>> main
  }
}
