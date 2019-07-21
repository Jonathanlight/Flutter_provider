import 'package:flutter/material.dart';
import 'package:flutter_provider/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return FloatingActionButton.extended(
      onPressed: () => counterBloc.increment(),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      icon: Icon(Icons.add),
      label: Text('Add'),
    );
  }
}