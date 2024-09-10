import 'package:cadastro_01/models/user_model.dart';
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
