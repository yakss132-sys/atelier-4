class Livre {
  String titre;
  String auteur;
  int _pages;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur, [this._pages = 0]) {
    totalLivres++;
  }

  int get pages => _pages;

  static void afficherTotal() {
    print('Nombre total de livres créés : $totalLivres');
  }

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }
}

void main() {
  var l1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry', 200);
  var l2 = Livre("L'Étranger", 'Albert Camus');

  l1.afficherInfos();
  print('Pages : ${l1.pages}'); // 200
  l2.afficherInfos();

  Livre.afficherTotal(); // 2
}
