class Couleur {
  final int r; // Rouge
  final int g; // Vert
  final int b; // Bleu

  Couleur(this.r, this.g, this.b);

  // Constructeurs nommés (redirigés vers le constructeur principal)
  Couleur.rouge() : this(255, 0, 0);
  Couleur.vert() : this(0, 255, 0);
  Couleur.bleu() : this(0, 0, 255);

  void afficherCouleur() {
    print('(R :$r, V :$g, B :$b)');
  }
}

void main() {
  var rouge = Couleur.rouge();
  var vert = Couleur.vert();
  var bleu = Couleur.bleu();

  rouge.afficherCouleur(); // (R :255, V :0, B :0)
  vert.afficherCouleur();  // (R :0, V :255, B :0)
  bleu.afficherCouleur();  // (R :0, V :0, B :255)
}
