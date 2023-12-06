import 'package:facebook_b13/pages/acceuil.dart';
import 'package:facebook_b13/pages/login_page.dart';
import 'package:facebook_b13/pages/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
   
  ) 
  );
}

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
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
        
      ),
      home:const LoginPage(),
      routes: {
        '/acceuil':(context)=>Acceuil(),
        '/login':(context)=>LoginPage(),
        '/signUp':(context)=>SignUp()
      },
    );
  }
}



