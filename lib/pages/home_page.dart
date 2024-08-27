import 'package:dribbledesign/utils/emoticonface.dart';
import 'package:dribbledesign/utils/exercices_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Column(
                children: [
                  // Nom et notifications
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // hi Philemon
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hello Philemon !",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "21 juin, 2024",
                            style: TextStyle(color: Colors.blue[100]),
                          ),
                        ],
                      ),

                      // notification
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue[600]),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  // barre de recherche
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Rechercher",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  // comment vas tu ?
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Comment vas-tu ?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Emoticonface(emoticonface: '😃'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bien",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Emoticonface(emoticonface: '😍'),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Amoureux",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Emoticonface(emoticonface: '😭'),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Triste", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Emoticonface(emoticonface: '😡'),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Enervé", style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                    child: Column(
                  children: [
                    // exercices
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // Listview of exercices

                    Expanded(
                      child: ListView(
                        children: [
                          ExerciceTitle(
                            exerciceName: "Sport Football ",
                            numberOfExercice: "13 exercices",
                            couleur: Colors.indigo,
                            icon: Icons.favorite,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Basket-ball",
                            numberOfExercice: "14 exercices",
                            couleur: Colors.red,
                            icon: Icons.person,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Rugby",
                            numberOfExercice: "73 exercices",
                            couleur: Colors.amber,
                            icon: Icons.dashboard,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Cyclisme",
                            numberOfExercice: "95 exercices",
                            couleur: Colors.pink,
                            icon: Icons.local_activity_sharp,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Gymnastique",
                            numberOfExercice: "68 exercices",
                            couleur: Colors.purple,
                            icon: Icons.explore_rounded,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Aikido",
                            numberOfExercice: "16 exercices",
                            couleur: Colors.indigo,
                            icon: Icons.favorite,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Kitesurf",
                            numberOfExercice: "30 exercices",
                            couleur: Colors.red,
                            icon: Icons.person,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Surf",
                            numberOfExercice: "13 exercices",
                            couleur: Colors.amber,
                            icon: Icons.dashboard,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Snowboard",
                            numberOfExercice: "73 exercices",
                            couleur: Colors.pink,
                            icon: Icons.local_activity_sharp,
                          ),
                          ExerciceTitle(
                            exerciceName: "Sport Bobsleigh",
                            numberOfExercice: "17 exercices",
                            couleur: Colors.purple,
                            icon: Icons.explore_rounded,
                          ),
                        ],
                      ),
                    )
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
