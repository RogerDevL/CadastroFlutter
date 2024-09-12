enum Gender { masculino, feminino }

class UserModel {
  String name;
  String email;
  String senha;
  Gender genero;

  UserModel(
      {required this.name,
      required this.email,
      required this.senha,
      required this.genero});
}
