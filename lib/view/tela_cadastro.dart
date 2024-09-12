import 'package:cadastro_01/models/user_model.dart';
import 'package:cadastro_01/view/tela_verCadastros.dart';
import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<TelaCadastro> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  Gender _generoSelecionado = Gender.masculino;
  List<UserModel> users = [];

  void salvaInfo() {
    users.add(UserModel(
      name: nameController.text,
      email: emailController.text,
      senha: senhaController.text,
      genero: _generoSelecionado,
    ));

    nameController.clear();
    emailController.clear();
    senhaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Cadastro',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome:',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email:',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: senhaController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'senha:',
                ),
              ),
            ),
            RadioListTile<Gender>(
              title: Text('Masculino'),
              value: Gender.masculino,
              groupValue: _generoSelecionado,
              onChanged: (Gender? value) {
                setState(() {
                  _generoSelecionado = value!;
                });
              },
            ),
            RadioListTile<Gender>(
              title: Text('Feminino'),
              value: Gender.feminino,
              groupValue: _generoSelecionado,
              onChanged: (Gender? value) {
                setState(() {
                  _generoSelecionado = value!;
                });
              },
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 86.0, right: 30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      salvaInfo();
                    },
                    child: Text("Salvar"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (users.isNotEmpty) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => TelaVercadastros(users: users),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Nenhum usuário salvo")),
                      );
                    }
                  },
                  child: Text("Mostrar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
