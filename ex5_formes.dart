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

class Rectangle extends Forme {
  final double longueur;
  final double largeur;

  Rectangle(this.longueur, this.largeur);

  @override
  double calculerAire() => longueur * largeur;
}

void main() {
  var cercle = Cercle(3);
  var rectangle = Rectangle(4, 5);

  cercle.afficherMessage();
  print('Aire du cercle : ${cercle.calculerAire().toStringAsFixed(2)}'); // 28.27

  rectangle.afficherMessage();
  print('Aire du rectangle : ${rectangle.calculerAire()}'); // 20.0
}
