import 'package:flutter/material.dart';


Future<Widget> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  return const MyApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FlavorTest(),
    );
  }
}

class FlavorTest extends StatelessWidget {
  const FlavorTest({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: Text("Flavor ${const String.fromEnvironment('FLUTTER_APP_FLAVOR',)}"),
      ),
    );
  }
}

