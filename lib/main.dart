import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hng_task_1/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG TASK 1',
      theme: ThemeData.dark(),
      home: const MainScreen(),
    );
  }
}
