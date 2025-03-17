import 'package:e_constat/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Constat app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
     //  '/home': (context) => HomeScreen(), 
        '/login': (context) => LoginScreen(),
     // '/register': (context) => RegisterScreen(),
      },
    );
  }
}
