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
