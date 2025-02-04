import 'package:flutter/material.dart';
import 'package:mini_projet_debut/PageDAccueil/Acceuil.dart';

class Inscription extends StatelessWidget {
  const Inscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: const Text("S'inscrire", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
          backgroundColor:Colors.deepOrange,
      ),
        body: ListView(
          children: [Column(
            children: [
              // Center(
              //   child: ListTile(
              //     title: Center(
              //       child: Text(
              //         "S'inscrire",
              //         style: TextStyle(
              //           fontSize: 30,
              //           fontWeight: FontWeight.bold
              //         ),
              //       )),
              //     subtitle: Center(child:  Text(
              //       "Créer votre compte",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold
              //       ),
              //       ),)
              //   ),
              // ),
              Center(
                child: Form(
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        const Text("Créer votre compte",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                        const SizedBox(height: 50),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 226, 193, 204),
                            hintText: "Entrez votre nom complet",
                            labelText: "Nom d'utilisateur",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                           // helperText: "Votre e-mail doit contenir @",
                            prefixIcon: const Icon(Icons.person)
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                          
                            filled: true,
                            fillColor: const Color.fromARGB(255, 226, 193, 204),
                            hintText: "Entrez votre E-mail",
                            labelText: "E-mail",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                            helperText: "Votre mot de email doit contenir un @",
                            prefixIcon: const Icon(Icons.email)
                          ),
                        ),
                         const SizedBox(height: 15),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 226, 193, 204),
                            hintText: "Entrez votre mot de passe",
                            labelText: "password",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                            //helperText: "Votre mot de email doit contenir un @",
                            prefixIcon: const Icon(Icons.key)
                          ),
                        ),
                         const SizedBox(height: 15),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                          
                            filled: true,
                            fillColor: const Color.fromARGB(255, 226, 193, 204),
                            hintText: "Confimer votre mot de passe",
                            labelText: "Confirmer mot passe",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                            //helperText: "Votre mot de email doit contenir un @",
                            prefixIcon: const Icon(Icons.key)
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 500,
                          child: ElevatedButton(
                            
                            onPressed: (){
                              Navigator.pushReplacement(context, 
                              MaterialPageRoute(builder:(context){
                                  return HomePage();
                              }));
                              
                            },
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                              backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
                            ),
                             child: const Text(
                              "S'inscrire ",
                              style: const TextStyle(
                                fontSize: 20
                              ),
                              )
                             ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  )
                  ),
              ),
            ],
          ),]
        ),
    );
  }
}