import 'package:flutter/material.dart';
import 'package:flutter_provider/blocs/form_bloc.dart';
import 'package:provider/provider.dart';

class InputForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final FormBloc formBloc = Provider.of<FormBloc>(context);
    TextEditingController usernameController = new TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          formBloc.response.toString(),
          style: TextStyle(fontSize: 15.0, color: formBloc.colorValided),
        ),
        TextFormField(
          controller: usernameController,
          obscureText: false,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: formBloc.label_username.toString(),
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
        FloatingActionButton.extended(
          onPressed: () => formBloc.validated(usernameController.text),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icon(Icons.check_box),
          label: Text("Valider"),
        )
      ],
    );
  }
}