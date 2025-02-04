import 'package:flutter/material.dart';
import 'package:mini_projet_debut/Formulaire/Inscription_Demande_C.dart';
import 'package:mini_projet_debut/Formulaire/PersonneRef_E.dart';

//V
class EtudesAnterieur extends StatelessWidget {
  const EtudesAnterieur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etude Antérieure",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
        backgroundColor:Colors.deepOrange,
      ),
      body:Center(
        child: Stack(
          children: [
            SingleChildScrollView(child:Column(children: [
             const ListTile(
              title: Center(
                // child: Text("ETUDE ANTERIEUR",style: TextStyle(
                //         fontSize: 30,
                //         fontWeight: FontWeight.bold)),
              ),
              subtitle: Center(child: Text("Indiquez les études pertinentes que vous avez effectuées et joindre les attestations/diplômes.\n NB:Commencer par la plus récente.",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
              ),         
             ),

            //Pour gérer les Etab1,freq1,diplôme1; Etab2,freq2,diplôme2; Etab3,freq3,diplôme3
            Container(
              padding:const EdgeInsets.all(10),
              child: Form(child:Column(
                children: [
                        //Pour la première Attestation
                        Column(children: [
                        const Text("Etude 1"),
                        TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Etablissement/Pays",
                                hintText: "Entre le nom votre Etablissement/Pays ",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          const SizedBox(height:20),
                          Column(
                            children: [
                              const Text("Fréquentation",style: TextStyle(fontSize:20),),
                              Row(children:[
                                //l'annnée de départ
                                Expanded(child: TextField(
                                    decoration: InputDecoration(
                                      filled:true,
                                      fillColor: const Color.fromARGB(255, 226, 193, 204),
                                      labelText:"de:...",
                                      hintText: "de:...",
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                                    ),
                                  ),
                                  ),
                                  // L'année d'obtention
                                  const SizedBox(width: 10),
                                  Expanded(child: TextField(
                                    decoration: InputDecoration(
                                      filled:true,
                                      fillColor: const Color.fromARGB(255, 226, 193, 204),
                                      labelText:"à:...",
                                      hintText: "à:...",
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                                    ),
                                  ),)
                                  ]
                              ),
                            ],
                          ),

                          const SizedBox(height:20),
                          TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Diplôme et/ou attestation",
                                hintText: "Votre attestation",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                          ),
                          const SizedBox(height:20),
                          TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Année d'obtention",
                                hintText: "Entre l'Année d'obtention",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                          ),
                        ]),
              
              
                        //Pour la seconde Attestation
                        const SizedBox(height: 30),
                        Column(children: [
                        const Text("Etude 2"),
                        TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Etablissement/Pays",
                                hintText: "Entre le nom votre Etablissement/Pays ",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          const SizedBox(height:20),
                          TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Fréquentation",
                                hintText: "de...à...",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          const SizedBox(height:20),
                          TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Diplôme et/ou attestation",
                                hintText: "Votre attestation",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                          ),
                          const SizedBox(height:20),
                          TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Année d'obtention",
                                hintText: "Entre l'Année d'obtention",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                          ),
                        ]),
              
              
              
                        //Pour la troisième Attestation
                        const SizedBox(height: 30),
                        Column(children: [
                        const Text("Etude 3"),
                        TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Etablissement/Pays",
                                hintText: "Entre le nom votre Etablissement/Pays ",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          const SizedBox(height:20),
                          TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Fréquentation",
                                hintText: "de...à...",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          const SizedBox(height:20),
                          TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Diplôme et/ou attestation",
                                hintText: "Votre attestation",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                          ),
                          const SizedBox(height:20),
                          TextField(
                              decoration: InputDecoration(
                                filled:true,
                                fillColor: const Color.fromARGB(255, 226, 193, 204),
                                labelText:"Année d'obtention",
                                hintText: "Entre l'Année d'obtention",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                          ),
                        ]),
                        const SizedBox(height:20),
                ],
              )),
            ),
          
            //Pour les bouttons suivant et precedent de la page C)Incription demandé
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  Row(children: [
                    Expanded(child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder:(context){
                          return const C_Inscription();
                        }));
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
                          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        ),
                        child:const Text('Precedent')),
                    )
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed:(){
                         Navigator.push(context, MaterialPageRoute(builder:(context){
                           return const persoReference();
                         }));
                      },
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
                          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        ),
                       child:const Text('Suivant')),
                    )
                    )
                  ],),
                ],
              ),
            )
          ],),),
           //Pour les bouttons suivant et precedent de la page C)Incription demandé
           
          
          ],
        ),
      )
    );
  }
}