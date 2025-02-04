import 'package:flutter/material.dart';

class modifimotdepasse extends StatefulWidget {
  const modifimotdepasse({super.key});

  @override
  State<modifimotdepasse> createState() => _modifimotdepasseState();
}

class _modifimotdepasseState extends State<modifimotdepasse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Modifier mot de passe", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
          backgroundColor:Colors.deepOrange,
        ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              const Text("Entre votre nouveau mot de passe"),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 226, 193, 204),
                hintText: "nouveau mot de passe",
                labelText: "Entre un niveau mot de passe...",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                helperText: "code est de 6 chiffre",
                prefixIcon: Icon(Icons.key)
              ),
              ),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 226, 193, 204),
                hintText: "Confirmer le mot de passe",
                labelText: "confirmer",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                //helperText: "code est de 6 chiffre",
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