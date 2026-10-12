class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print('Ceci est un média générique.');
  }
}

class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print('Ceci est un Livre : $titre par $auteur.');
  }
}

class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print('Ceci est un Film : $titre ($dureeMinutes minutes).');
  }
}

void main() {
  List<Media> catalogue = [];

  catalogue.add(Livre('Le Petit Prince', 'Antoine de Saint-Exupéry'));
  catalogue.add(Livre('Les Misérables', 'Victor Hugo'));
  catalogue.add(Film('Inception', 148));
  catalogue.add(Film('Le Voyage de Chihiro', 125));

  for (var media in catalogue) {
    media.afficherType(); // polymorphisme : la bonne version est appelée
  }
}
