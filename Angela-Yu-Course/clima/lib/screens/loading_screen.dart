import 'package:flutter/material.dart';

import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  initState() {
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
