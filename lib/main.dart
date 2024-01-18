import 'package:facebook_b13/pages/acceuil.dart';
import 'package:facebook_b13/pages/login_page.dart';
import 'package:facebook_b13/pages/sign_up.dart';
import 'package:facebook_b13/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider())
      ],
      child: const MyApp(),
    ),
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
      home: const LoginPage(),
      routes: {
        '/acceuil': (context) => const Acceuil(),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUp()
      },
    );
  }
}
