import 'package:flutter/material.dart';
import 'package:mini_projet_debut/InscriptionApp/Connecter.dart';
import 'package:mini_projet_debut/InscriptionApp/Sinscrire.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(20),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _header(),  // Afficher l'image et le titre
            const SizedBox(height: 20),
            _inputField(),  // Champs de saisie pour les buttons connecter , s'inscrire
          ],
        ),
      ),
    );
  }
   // Header avec logo ou image
  Widget _header() {
    return Column(
      children: [
        Image.asset(
          'Assets/my_image.png',  // Remplacer par l'image de votre choix
          height: 400,
          fit: BoxFit.contain,  // Taille de l'image
        ),
        const SizedBox(height: 10),
        const  Text(
              "Rejoignez l'élite de l'ingénieurie",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ), 
          const SizedBox(height: 10),

            // Texte de description
          const  Text(
              "L'innovation vous attend, faites le premier pas.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
      ],
    );
  }
    Widget _inputField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _loginButton_0,
        const SizedBox(width: 10),
        _loginButton_1,
      ],
    );
  }
    // Bouton de connexion
  ElevatedButton get _loginButton_0 {
    return  ElevatedButton(
      onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context){
              return connexion();
            }
          )
        );
      } ,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 235, 106, 7),  // Couleur du bouton en bleu
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),  // Bordures arrondies
        ),
      ),
      child: const Text(
        "Connecter",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
      // Bouton d'inscription
  ElevatedButton get _loginButton_1 {
    return  ElevatedButton(
      onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context){
              return Inscription();
            }
          )
        );
      } ,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 235, 106, 7),  // Couleur du bouton en bleu
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),  // Bordures arrondies
        ),
      ),
      child: const Text(
        "S'inscrire",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}