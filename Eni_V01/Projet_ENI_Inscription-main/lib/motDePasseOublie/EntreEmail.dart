import 'package:flutter/material.dart';
import 'package:mini_projet_debut/motDePasseOublie/EntreCode.dart';

class entreEmail extends StatefulWidget {
  const entreEmail({super.key});

  @override
  State<entreEmail> createState() => _entreEmailState();
}

class _entreEmailState extends State<entreEmail> {
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
        margin: EdgeInsets.only(top:100),
        child: Center(
          child: Column(
            children: [
              const Text("Entre votre E-mail"),
              const TextField(
                decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 226, 193, 204),
                hintText: "Entrez votre e-mail",
                labelText: "E-mail",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                helperText: "Votre e-mail doit contenir @",
                prefixIcon: Icon(Icons.email)
              ),
              ),
              ElevatedButton(
                            
              onPressed: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context){
                  return const entrecode();
                }));
              },
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
              ),
                child: const Text(
                "Envoyer",
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