import 'dart:math';

abstract class Forme {
  double calculerAire(); // méthode abstraite (sans corps)

  void afficherMessage() {
    print("Calcul de l'aire...");
  }
}
