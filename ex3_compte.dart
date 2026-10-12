class Compte {
  double _solde;
  final String numeroCompte;

  // Constructeur simplifié : le solde est optionnel (0.0 par défaut)
  Compte(this.numeroCompte, [this._solde = 0.0]);

  // Getter public : solde formaté en dollars
  String get solde => '${_solde.toStringAsFixed(2)} \$';

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    } else {
      print('Dépôt refusé : le montant doit être positif.');
    }
  }
}

void main() {
  var compte = Compte('CA-001');
  compte.depot(150);
  compte.depot(-20); // refusé
  print('Compte ${compte.numeroCompte} - Solde : ${compte.solde}'); // 150.00 $
}
