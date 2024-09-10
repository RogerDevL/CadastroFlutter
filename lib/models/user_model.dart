enum Gender { masculino, feminino }

class UserModel {
  String name;
  String email;
  String tel;
  String endereco;
  Gender genero;

  UserModel(
      {required this.name,
      required this.email,
      required this.tel,
      required this.endereco,
      required this.genero});
}
