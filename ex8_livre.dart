class Livre {
  String titre;
  String auteur;

  Livre(this.titre, this.auteur);

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }
}

void main() {
  var l1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry');
  var l2 = Livre("L'Étranger", 'Albert Camus');

  l1.afficherInfos();
  l2.afficherInfos();
}
