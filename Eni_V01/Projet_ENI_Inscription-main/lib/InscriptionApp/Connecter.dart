import 'package:flutter/material.dart';
import 'package:mini_projet_debut/InscriptionApp/Sinscrire.dart';
import 'package:mini_projet_debut/PageDAccueil/Acceuil.dart';
import 'package:mini_projet_debut/motDePasseOublie/EntreEmail.dart';

class connexion extends StatelessWidget {
  const connexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Bienvenue à l'ENI-ABT", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
          backgroundColor:Colors.deepOrange,
        ),
        body: ListView(
          children: [Column(
            children: [
              Center(               
                child: Form(
                  child: Container(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        const Text("Entrez vos informations pour vous connecter",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                        SizedBox(height:50),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 226, 193, 204),
                            hintText: "Entrez votre e-mail",
                            labelText: "E-mail",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                            helperText: "Votre e-mail doit contenir @",
                            prefixIcon: Icon(Icons.email)
                          ),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 226, 193, 204),
                            hintText: "Entrez votre mot de passe",
                            labelText: "Password",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                            helperText: "Votre mot de passe doit contenir...",
                            prefixIcon: Icon(Icons.key)
                          ),
                        ),
                        SizedBox(height: 15),
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
                              "Connecter",
                              style: TextStyle(
                                fontSize: 20
                              ),
                              )
                             ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  )
                  ),
              ),
              SizedBox(height: 50),
              Center(
                
                child: InkWell(
                  child: const Text(
                    "Mot de passe oublié ?",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context){
                      return const entreEmail();
                    }));
                  },
                  
                )
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Vous n'avez pas un compte ? "),
                    Builder(
                      builder: (context) {
                        return InkWell(
                           child: const Text(
                            "Créer un compte",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                           onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context){
                                  return const Inscription();
                                }
                                )
                              );
                        },
                        );
                      }
                    )
                  ],
                ),
              )
            ],
          ),]
        ),
      );
  }
}