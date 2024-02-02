import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:project1/pages/project_1.dart';
import 'package:project1/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(
    const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: HomeScreen()



      ),
  );
}

