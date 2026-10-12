// Classe abstraite utilisée comme interface (contrat)
abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('ServeurAPI : Connexion établie pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('ServeurAPI : Déconnexion réussie.');
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('BaseDeDonnees : Session ouverte pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('BaseDeDonnees : Session fermée.');
  }
}
