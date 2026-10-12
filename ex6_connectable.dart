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

void main() {
  var serveur = ServeurAPI();
  var bd = BaseDeDonnees();

  List<Connectable> services = [serveur, bd];

  for (var service in services) {
    service.connecter('Yaqoub');
    service.deconnecter();
  }
}
