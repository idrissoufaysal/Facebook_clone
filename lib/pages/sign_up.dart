import 'package:facebook_b13/Utils/colors.dart';
import 'package:facebook_b13/apiServices/network_handler.dart';
import 'package:facebook_b13/components/Texfildes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phonController = TextEditingController();
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();

  NetworkHandler service=NetworkHandler();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            const SizedBox(height: 80),
            Center(
              child: Text(
                "Inscrivez vous",
                style: GoogleFonts.poppins(
                    fontSize: 35, color: blue, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Textfield(
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return 'veuillez entrer votre nom';
                      }
                      return null;
                    },
                    textController: _nomController,
                    icon: const FaIcon(FontAwesomeIcons.circleUser),
                    hintText: 'nom',
                  ),

                ),
                const SizedBox(width: 0),
                Expanded(
                  child: Textfield(
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return 'veuillez entrer votre prenom';
                      }
                      return null;
                    },
                    textController: _prenomController,
                    icon: const FaIcon(FontAwesomeIcons.circleUser),
                    hintText: 'prenom',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Textfield(
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'veuillez entrer votre adress email';
                }
                if (!value.contains('@')) {
                  return 'Email non valide';
                }
                return null;
              },
              textController: _emailController,
              icon: const FaIcon(FontAwesomeIcons.envelope),
              hintText: 'saisir votre email',
              keyType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            Textfield(
              keyType: TextInputType.phone,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'veuillez entrer votre numero de telephone';
                }

                return null;
              },
              textController: _phonController,
              icon: const FaIcon(FontAwesomeIcons.phone),
              hintText: 'saisir votre numero de telephone',
            ),
            Textfield(
              keyType: TextInputType.visiblePassword,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return 'veuillez entrer votre adress email';
                }

                return null;
              },
              textController: _passwordController,
              icon: const FaIcon(FontAwesomeIcons.lock),
              hintText: 'saisir votre mot de pass',
            ),

            //boutton pour se connecter
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                backgroundColor: green,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(08),
                  ),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Map<String, String> data = {
                    "nom": _nomController.text,
                    "prenom": _prenomController.text,
                    "email": _emailController.text,
                    "phone": _phonController.text,
                    "password": _passwordController.text
                  };
                  // ignore: avoid_print
                 
                  service.post('/signUp',data);
                 // service.get('/users');
                  //Navigator.pushNamed(context, '/acceuil');
                }
              },
              child: const Text(
                
                "S'inscrire",

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 05),
          ]),
        ),
      ),
    );
  }
}
