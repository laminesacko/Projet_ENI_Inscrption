import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:mini_projet_debut/Formulaire/Identification_Candidat_A.dart';
import 'package:mini_projet_debut/PageDAccueil/Deatil_Filliere.dart';




class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _NestedScrollPageState();
}

class _NestedScrollPageState extends State<HomePage> {
  final List<String> Slides_images = [
    "Assets/Slide1.jpeg",
    "Assets/Slide2.jpeg",
    "Assets/Slide3.jpeg",
    "Assets/Slide4.jpeg",
  ];

  final List<String> image = [
    "Assets/Geea.jpeg",
    "Assets/GeoMine.jpeg",
    "Assets/GIT.jpeg",
    "Assets/GME.jpeg",
    "Assets/Génie civil.jpeg",
    "Assets/Mine.jpeg",
    "Assets/Topographie.jpeg",
  ];
  List<String> titles = [
    "Électronique",
    "Géologie et Mine",
    "Génie Informatique",
    "Génie Mécanique",
    "Génie Civil",
    "Génie Mine",
    "Topographie"
    // Ajoute les titres selon tes images
  ];

  int _selectedIndex = 0;
 // Index de l'onglet actif
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // Header du Drawer
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("Assets/oum.jpg"), // Image de profil
                    ),
                    SizedBox(height: 10),
                    Text("Oumou Maliki Tembely",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text("email@example.com",
                        style: TextStyle(color: Colors.white70, fontSize: 14)),
                  ],
                ),
              ),
              //liste des options
              ListTile(
                leading: const Icon(Icons.home, color:  Colors.orange),
                title: const Text("Accueil"),
                onTap: () {
                  //Navigator.pop(context); // Ferme le Drawer
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications, color:  Colors.orange),
                title: const Text("Etat Inscription"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings, color:  Colors.orange),
                title: const Text("Paramètre"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.help, color:  Colors.orange),
                title: const Text("A propos"),
                onTap: () {},
              ),
            ]
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 150.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: FlutterCarousel(
                      options: FlutterCarouselOptions(
                        height: 150.0,
                        showIndicator: true,
                        slideIndicator: CircularSlideIndicator(),
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        enlargeCenterPage: true,
                      ),
                      items: Slides_images.map((imagePath) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: NetworkImage(imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                          clipBehavior: Clip.hardEdge,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ];
            },

            body: Column(
              children: [
                const SizedBox(child: Text("Bonjour Oumou")),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return Hero(
                        tag: image[index].toString(),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailFiliere(imagePath: image[index]),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(image[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                right: 10,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    titles[index], // Liste contenant les titres correspondants
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),


              ],
            ),

          ),
          const FormulaireIdentification_A(),
          const Scaffold(body: Center(child: Text("Ressources")),),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Pour éviter l'animation de changement de taille
        backgroundColor: Colors.white, // Couleur de fond
        selectedItemColor: Colors.orange, // Couleur de l'icône sélectionnée
        unselectedItemColor: Colors.black54, // Couleur des icônes non sélectionnées
        currentIndex: _selectedIndex, // Index de l'élément sélectionné
        onTap: _onItemTapped, // Fonction pour gérer le clic
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded), // Icône Discussions
            label: 'Acceuil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range_sharp), // Icône Actus
            label: 'Inscription',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book), // Icône Communautés
            label: 'Ressources',
          ),

        ],
      ),
    );
  }
}
