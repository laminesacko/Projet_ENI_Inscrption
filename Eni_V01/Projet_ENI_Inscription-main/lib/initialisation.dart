import 'package:flutter/material.dart';
import 'package:mini_projet_debut/login.dart';

class Initialisation extends StatefulWidget {
  const Initialisation({super.key});

  @override
  State<Initialisation> createState() => _InitialisationState();
}

class _InitialisationState extends State<Initialisation> {
    @override
  void initState() {
    super.initState();
    // Délai de 5 secondes avant de naviguer vers la page de connexion
    Future.delayed(const Duration(seconds: 5), () {
      // Utilise Navigator pour passer à la page Login sans revenir en arrière
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: Future.delayed(const Duration(seconds: 3)), builder: (context, snapshot){
      if(snapshot.connectionState==ConnectionState.waiting){return afficherImage();}
      return Login();
    });
  }
   Widget afficherImage() {
    return Scaffold(body: Image.asset('Assets/ENI_ABT.png')); // Image depuis les assets
  }
}