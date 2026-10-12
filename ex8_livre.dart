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

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre, [int pages = 0])
      : super(titre, auteur, pages);

  @override
  void afficherInfos() {
    super.afficherInfos();
    print('  Genre: $genre');
  }
}

void main() {
  var l1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry', 200);
  var l2 = Livre("L'Étranger", 'Albert Camus');
  l1.afficherInfos();
  print('Pages : ${l1.pages}');
  l2.afficherInfos();

  var r1 = Roman('Le Crime de l\'Orient-Express', 'Agatha Christie', 'Policier', 256);
  var r2 = Roman('Dune', 'Frank Herbert', 'Science-fiction', 600);
  var r3 = Roman('Orgueil et Préjugés', 'Jane Austen', 'Romance');

  for (var roman in [r1, r2, r3]) {
    roman.afficherInfos();
  }

  Livre.afficherTotal(); // 5 (les romans sont aussi des livres)
}
