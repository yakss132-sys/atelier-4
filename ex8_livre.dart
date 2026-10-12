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
  l1.afficherInfos();
  print('Pages : ${l1.pages}');
}
