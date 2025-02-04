import 'package:flutter/material.dart';
import 'package:mini_projet_debut/Formulaire/Identification_Candidat_A.dart';
import 'package:mini_projet_debut/Formulaire/Inscription_Demande_C.dart';


//A
class FormulaireAdresse_B extends StatefulWidget {
  const FormulaireAdresse_B({super.key});

  @override
  State<FormulaireAdresse_B> createState() => _FormulaireAdresse_BState();
}

class _FormulaireAdresse_BState extends State<FormulaireAdresse_B> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Adresse", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
          backgroundColor:Colors.deepOrange,
      ),
      body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                // Center(
                //   child: Text(
                //     "ADRESSE",
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 20,
                //     ),
                //   ),
                // ),
                const SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "N°Porte",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Rue",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Avenue",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Quartier",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText:"Ville",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Tél",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Fax",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Courrier",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 40,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [ 
                  
                  Row(
                    
                    children: [
                      Expanded(child:Padding(padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context){
                                return const FormulaireIdentification_A();
                              }
                              )
                            );
                          }, 
                          style: ButtonStyle(
                            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                            backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange)
                          ),
                          child: const Text("Précédent"),
                          ),)
                      ),
                     // SizedBox(width: 150,),
                      Expanded(child:Padding(padding:  const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return const C_Inscription();//EtudesAnterieur();
                            }));
                          }, 
                          style: ButtonStyle(
                            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                            backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange)
                          ),
                          child: const Text("Suivant"),
                          ),)
                      ),
                    ],
                                )
                    ],
                  ),
               ),],)


           
              
            ),
            );
  }
}