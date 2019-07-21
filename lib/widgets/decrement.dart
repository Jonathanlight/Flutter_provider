import 'package:flutter/material.dart';
import 'package:flutter_provider/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';

class DecrementButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return FloatingActionButton.extended(
      onPressed: () => counterBloc.decrement(),
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      icon: Icon(Icons.remove),
      label: Text("Remove"),
    );
  }
}