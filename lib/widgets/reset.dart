import 'package:flutter/material.dart';
import 'package:flutter_provider/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';

class ResetButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return FloatingActionButton.extended(
      onPressed: () => counterBloc.reset(),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      icon: Icon(Icons.clear),
      label: Text("Reset"),
    );
  }
}