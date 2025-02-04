import 'package:flutter/material.dart';
import 'package:mini_projet_debut/Formulaire/Adresse_B.dart';
import 'package:mini_projet_debut/Formulaire/Etudes_Anterieurs_D.dart';

//V
class C_Inscription extends StatefulWidget {
  const C_Inscription({super.key});

  @override
  State<C_Inscription> createState() => _C_InscriptionState();
}

class _C_InscriptionState extends State<C_Inscription> {
  String redoubleOuPas="",redouble="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: const Text("Inscription Demandée",style: TextStyle(
                        fontSize:25,
                        fontWeight: FontWeight.bold)),
        backgroundColor:Colors.deepOrange,
      ),
      body: Center(
        child: Stack(//Stack permet de mettre des colonnes,lignes,listviews l'une au dessus de l'autre
          children: [
            //pour les champ des saisir et autres 
            SingleChildScrollView(
              child: Column(
                children: [
                  //Text("Inscription Demandée",style:TextStyle(fontSize:30,fontWeight:FontWeight.bold),),
                  Container(
                    padding:const EdgeInsets.all(10),
                    child: Form(
                      child:  Column(
                        children: [
                          DropdownButtonFormField(hint:const Text("Diplome cherché"),
                            items:[
                              const DropdownMenuItem(value:"Licence", child:Text("Licence")),
                              const DropdownMenuItem(value:"Licence Pro", child:Text("Licence Pro")),
                              const DropdownMenuItem(value:"TS", child:Text("Technicien supérieur")),
                              const DropdownMenuItem(value:"Master", child:Text("Master")),
                            ] ,
                            decoration: InputDecoration(
                              filled:true,
                              fillColor: const Color.fromARGB(255, 226, 193, 204),
                              border:OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
                            onChanged:(value){}
                          ),

                          //La partie de spécialité
                          const SizedBox(height:20),
                          TextField(
                            decoration: InputDecoration(
                              filled:true,
                              fillColor: const Color.fromARGB(255, 226, 193, 204),
                              labelText:"Spécialité",
                              hintText: "Entre votre Spécialité",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                            ),
                          ),
              
                          const SizedBox(height:20),
                           TextField(
                            decoration: InputDecoration(
                              filled:true,
                              fillColor: const Color.fromARGB(255, 226, 193, 204),
                              labelText:"Option",
                              hintText: "Entre votre option",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                            ),
                          ),
              
                          const SizedBox(height:20),
                          DropdownButtonFormField(hint:const Text("Classe(Une seule à cocher)"),
                            items:[
                              const DropdownMenuItem(value:"1ère Année", child:Text("1 ère Année")),
                              const DropdownMenuItem(value:"2ème Année", child:Text("2 ème Année")),
                              const DropdownMenuItem(value:"3ème Année", child:Text("3 ème Année")),
                            ] ,
                            decoration: InputDecoration(
                              filled:true,
                              fillColor: const Color.fromARGB(255, 226, 193, 204),
                              border:OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
                            onChanged:(value){}
                          ),
              
                          //pour la partie C1 de la  C
                          const SizedBox(height:20),
                          const Text("Est-ce votre première fois dans cette classe ?"),
                          RadioListTile(
                            title: const Text("Oui"),
                            value:'O', 
                            groupValue:redoubleOuPas, 
                            onChanged:(value){
                              setState((){
                                redoubleOuPas=value!;
                              });
                            }
                          ),
                          RadioListTile(
                            title: const Text("Non"),
                            value:'N', 
                            groupValue:redoubleOuPas, 
                            onChanged:(value){
                              setState((){
                                redoubleOuPas=value!;
                              });
                            }
                          ),


                        //La radios dans le cas ou l'étudiant coche NON
                        //Widget Motif(){}
                       redoubleOuPas=="N"? Column(children: [
                          const SizedBox(height:20),
                          const Text("Motif"),
                          RadioListTile(
                            title: const Text("Redoublement"),
                            value:'Redouble', 
                            groupValue:redouble, 
                            onChanged:(value){
                              setState((){
                                redouble=value!;
                              });
                            }
                          ),
                          RadioListTile(
                            title: const Text("Autre"),
                            value:'Autre', 
                            groupValue:redouble, 
                            onChanged:(value){
                              setState((){
                                redouble=value!;
                              });
                            }
                          ),
                        ],):Container(),

                        redouble=="Autre"?TextField(
                          decoration: InputDecoration(
                            filled:true,
                            fillColor: const Color.fromARGB(255, 226, 193, 204),
                            labelText:"A précisser",
                            hintText: "précisser",
                            border:OutlineInputBorder(borderRadius:BorderRadius.circular(25))
                          ),

                        ):Container(),


                          //la partie C2 du de la page C
                          const SizedBox(height:20),
                          DropdownButtonFormField(hint:const Text("Scolarité à l'ENI-ABT"),
                            items:[
                              const DropdownMenuItem(value:"2 ans", child:Text("2 ans")),
                              const DropdownMenuItem(value:"3 ans", child:Text("3 ans")),
                              const DropdownMenuItem(value:"4 ans", child:Text("4 ans")),
                              const DropdownMenuItem(value:"5 ans", child:Text("5 ans")),
                              const DropdownMenuItem(value:"6 ans", child:Text("6 ans")),
                            ] ,
                            decoration: InputDecoration(
                              filled:true,
                              fillColor: const Color.fromARGB(255, 226, 193, 204),
                              border:OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
                            onChanged:(value){}
                          ),
              
                        ],
                      )
                    ), 
                  ),
                  const SizedBox(height:20),

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
                          return const FormulaireAdresse_B();
                        }));
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.deepOrange),
                          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                        ),
                        child:const Text('Précédent')),
                    )
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return const EtudesAnterieur();
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
                ],
              ),
            ),
            
            

          ],

        ),
      ),
    );
  }
}

