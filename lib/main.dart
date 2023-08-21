import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/providers/function_state.dart';
import 'pages/page_1.dart';

main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Fstate())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
