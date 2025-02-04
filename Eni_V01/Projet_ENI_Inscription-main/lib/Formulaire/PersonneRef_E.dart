import 'package:flutter/material.dart';
import 'package:mini_projet_debut/Formulaire/Etudes_Anterieurs_D.dart';


//Lam
class persoReference extends StatelessWidget {
  const persoReference({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Personne de Référence", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
          backgroundColor:Colors.deepOrange,
        ),
        body: Center(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Center(
                  child: Form(
                      child: Container(
                       // padding: EdgeInsets.symmetric(horizontal:  25),
                        padding:const EdgeInsets.all(10),
                        child: Column(
                          children: [
          
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                hintText: "Entrer son prénom",
                                labelText: "Prénom",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
          
                              ),
                            ),
                            const SizedBox(height: 15),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                hintText: "Entrer son nom",
                                labelText: "Nom",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
          
                              ),
                            ),
                            const SizedBox(height: 15),
                            TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromARGB(255, 226, 193, 204),
                                  hintText: "Son adresse",
                                  labelText: "Adresse",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25)),
          
                                )
                            ),const SizedBox(height: 15),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                hintText: "Numéro de téléphone",
                                labelText: "Téléphone",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
          
                              ),
                            ),
          
                          ],
                        ),
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Row(children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
          
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context){
                              return const EtudesAnterieur();
                           }));
                            },
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                              backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
                            ),
                            child: const Text(
                              "Précedent",
                              style: TextStyle(
                                  //fontSize: 8
                              ),
                            )
                        ),
                      ),),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                            onPressed: (){
                              //Le code Pour envoyer le formulaire
                            },
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                              backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
                            ),
          
                            child: const Text(
                              "Vieux Maiga",
                              style: TextStyle(
                                  //fontSize: 8
                              ),
                            )
                        ),
                      ),)
                    ],),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
