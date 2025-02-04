import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:mini_projet_debut/Formulaire/Adresse_B.dart';


//A

class FormulaireIdentification_A extends StatefulWidget {
   const FormulaireIdentification_A({super.key});



  @override
  State<FormulaireIdentification_A> createState() => _FormulaireIdentification_AState();
}



class _FormulaireIdentification_AState extends State<FormulaireIdentification_A> {

  late String sexe="", statut="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Identification Du Candidat", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
          backgroundColor:Colors.deepOrange,
        ),
      body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                // Center(
                //   child: Text(
                //     "IDENTIFICATION DU CANDIDAT",
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 20,
                //     ),
                //   ),
                // ),


                const SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Prénom",
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
                    labelText: "Nom",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 10,),
                // 
                DateTimeFormField(
                  decoration: const InputDecoration(
                    labelText: 'Votre Date de naissance',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.all(
                        Radius.circular(25)
                      ),
                    )
                  ),
                  firstDate: DateTime.now().add(const Duration(days: 10)),
                  lastDate: DateTime.now().add(const Duration(days: 40)),
                  initialPickerDateTime: DateTime.now().add(const Duration(days: 20)),
                  onChanged: (DateTime? value) {
                    DateTime selectedDate = value!;
                    //La_Date=selectedDate;
                  },
                ),
          

                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Lieu de naissance",
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
                    labelText: "Nationalité",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 193, 204),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Sexe",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: const Text("Masculin",style: TextStyle(fontSize:14),),
                        value: "Masculin",
                        groupValue: sexe,
                        onChanged: (value){
                          setState(() {
                            sexe= value!;
                          });
                        }
                        )
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: const Text("Féminin",style: TextStyle(fontSize:14),),
                        value: "Féminin",
                        groupValue: sexe,
                        onChanged: (value){
                          setState(() {
                            sexe= value!;
                          });
                        }
                        )
                    )
                  ],
                ),
                const Text("Statut",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
                Column(
                  children: [
                    RadioListTile(
                        title: const Text("Fonctionnaire"),
                        value: "Fonctionnaire",
                        groupValue: statut,
                        onChanged: (value){
                          setState(() {
                            statut= value!;
                          });
                        }
                        ),                 
                    RadioListTile(
                        title: const Text("Profession libérale"),
                        value: "Profession libérale",
                        groupValue: statut,
                        onChanged: (value){
                          setState(() {
                            statut= value!;
                          });
                        }
                        ),
                    RadioListTile(
                        title: const Text("Sans Emploi"),
                        value: "Sans Emploi",
                        groupValue: statut,
                        onChanged: (value){
                          setState(() {
                            statut= value!;
                          });
                        }
                        )
              ]
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return const FormulaireAdresse_B();
                          }
                          )
                        );
                    }, 
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange)
                    ),
                    child: const Text("Suivant"),
                    ),
                ],
              )
                  ],
                ),

              
            ),
            );
      
      
  
  }
}