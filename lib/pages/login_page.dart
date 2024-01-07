import 'package:facebook_b13/components/Texfildes.dart';
import 'package:facebook_b13/pages/acceuil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                'facebook',
                style: GoogleFonts.roboto(
                    fontSize: 35, color: blue, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
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

            //boutton pour se connecter
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                backgroundColor: blue,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(08),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/acceuil');
              },
              child: const Text(
                'Se connecter',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 05),

            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Mode de pass oublier',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              endIndent: 5,
            ),
            const SizedBox(height: 25),

//boutton pour s'inscrire
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                backgroundColor: green,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(08),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signUp');
              },
              child: const Text('Creer un compte',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ),

            const SizedBox(
              height: 40,
            ),

            Align(
              alignment: Alignment.center,
              child: Text(
                'Agent_b13 Facebook',
                style: GoogleFonts.roboto(
                    fontSize: 15, color: blue, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
