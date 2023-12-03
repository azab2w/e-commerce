import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  static const String RouteName = 'Home';

  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
    );
  }
}
