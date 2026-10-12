class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++; // incrémenté à chaque création
  }
}

void main() {
  Tache('Faire les courses');
  Tache('Réviser le cours de Dart');
  Tache('Pousser l\'atelier sur GitHub');

  print('Nombre total de tâches : ${Tache.nombreTotal}'); // 3
}
