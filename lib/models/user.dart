class User{
  final int id;
  final String nom;
  final String prenom;
  final String email;
  final String password;

const User({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.email,
    required this.password
  });

factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      nom: json['nom'] as String,
      prenom: json['prenom'] as String,
      email: json['email'] as String,
      password: json['password'] as String
    );
  }


}