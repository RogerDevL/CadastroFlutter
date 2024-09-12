import 'package:cadastro_01/models/user_model.dart';
import 'package:cadastro_01/view/tela_cadastro.dart';
import 'package:cadastro_01/widgets/card.dart';
import 'package:flutter/material.dart';

class TelaVercadastros extends StatelessWidget {
  const TelaVercadastros({
    super.key,
    required this.users,
  });

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              TelaCadastro(), // substitua com a página que você deseja navegar
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: UserCard(
                users: users,
              ),
            )
          ],
        ),
      ),
    );
  }
}
