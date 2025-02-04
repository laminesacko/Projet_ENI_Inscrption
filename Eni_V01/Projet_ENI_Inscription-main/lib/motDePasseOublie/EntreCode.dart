import 'package:flutter/material.dart';
import 'package:mini_projet_debut/motDePasseOublie/ModieMotSePasse.dart';

class entrecode extends StatefulWidget {
  const entrecode({super.key});

  @override
  State<entrecode> createState() => _entrecodeState();
}

class _entrecodeState extends State<entrecode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Mot de passe oublier", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
          backgroundColor:Colors.deepOrange,
        ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              const Text("Entre le code qui  vous a été envoye"),
              const TextField(
                obscureText:true,
                decoration: InputDecoration(        
                filled: true,
                fillColor: const Color.fromARGB(255, 226, 193, 204),
                hintText: "Entrez le code",
                labelText: "code.....",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                helperText: "code est de 6 chiffre",
                prefixIcon: Icon(Icons.key)
              ),
              ),
              ElevatedButton(
                            
              onPressed: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context){
                  return modifimotdepasse();
                }));
              },
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
              ),
                child: const Text(
                "Ok",
                style: TextStyle(
                  fontSize: 20
                ),
                )
            ),

            ],
          ),
        ),
      ),
    );
  }
}