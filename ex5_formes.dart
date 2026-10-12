import 'dart:math';

abstract class Forme {
  double calculerAire(); // méthode abstraite (sans corps)

  void afficherMessage() {
    print("Calcul de l'aire...");
  }
}

class Cercle extends Forme {
  final double rayon;

  Cercle(this.rayon);

  @override
  double calculerAire() => pi * rayon * rayon;
}
