import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const mozartImageUrl = 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/01/25/4/1/1/7/1453717818319_600.jpg';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.red,
            backgroundImage: NetworkImage(mozartImageUrl),
          ),
          const Text(
            'Mozart',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 39,
              color: Colors.white,
            ),
          ),
          Text(
            'Music Composer',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Source Sans Pro',
              color: Colors.teal.shade100,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              color: Colors.teal.shade300,
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: const Icon(
                Icons.piano,
                color: Colors.teal,
              ),
              title: Text(
                'A genius of musical music.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal.shade900,
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: const Icon(
                Icons.flag,
                color: Colors.teal,
              ),
              title: Text(
                'Austria',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal.shade900,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
