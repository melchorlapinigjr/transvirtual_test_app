import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget child;
  final AppBar? appBar;

  const MyScaffold({super.key, required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
