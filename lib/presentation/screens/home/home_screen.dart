import 'package:baseapp/presentation/components/texte_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Teste",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextFieldWidget(
              key: key,
              label: "Email",
              icon: Icons.email_outlined,
              hintText: "Entre com seu e-mail",
              onChanged: () {},
            )
          ],
        ));
  }
}
