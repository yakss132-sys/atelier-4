class Compte {
  double _solde;
  final String numeroCompte;

  // Constructeur simplifié : le solde est optionnel (0.0 par défaut)
  Compte(this.numeroCompte, [this._solde = 0.0]);
}
