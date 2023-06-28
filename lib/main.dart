import 'package:flutter/material.dart';

import 'presentation/sign_in/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TransVirtual',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: Theme.of(context).colorScheme.copyWith(
              tertiaryContainer: Colors.lightBlue, background: Colors.white),),
      home: const SignIn(),
    );
  }
}
