import 'package:facebook_b13/components/Texfildes.dart';
import 'package:facebook_b13/pages/acceuil.dart';
import 'package:flutter/material.dart';

import '../Utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Center(
              child: Text(
                "FACEBOOK",
                style: TextStyle(
                    color: blue, fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Textfield(
              textController: _emailController,
              icon: const Icon(Icons.email),
              hintText: 'saisir votre email',
            ),
            const SizedBox(height: 10),
            Textfield(
              textController: _passwordController,
              icon: const Icon(Icons.key),
              hintText: 'saisir votre mot de pass',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color:blue,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    print('cliquer');
                    Navigator.pushNamed(context, '/acceuil');
                  },
                  child: const Text('Se connecter',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                )),
            const SizedBox(height: 0),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Mode de pass oublier',
                  style: TextStyle(color:Colors.blue ),
                ),
              ),
            ),
      const  Divider(
         color: Colors.grey,
         height: 5,
         endIndent: 5,
                ),
            Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(5)),
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: GestureDetector(
                  child: const Text('Creer un compte',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
