import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExerciceTitle extends StatelessWidget {
  IconData icon;
  Color couleur;
  String exerciceName;
  String numberOfExercice;

  ExerciceTitle(
      {super.key,
      required this.exerciceName,
      required this.icon,
      required this.couleur,
      required this.numberOfExercice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: couleur,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exerciceName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(numberOfExercice,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz)
            ],
          )),
    );
  }
}
