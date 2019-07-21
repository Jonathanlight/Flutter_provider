import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider/blocs/counter_bloc.dart';
import 'package:flutter_provider/blocs/form_bloc.dart';
import 'package:flutter_provider/widgets/decrement.dart';
import 'package:flutter_provider/widgets/increment.dart';
import 'package:flutter_provider/widgets/input.dart';
import 'package:flutter_provider/widgets/reset.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    final FormBloc formBloc = Provider.of<FormBloc>(context);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Provider State: ' + counterBloc.counter.toString()),
      ),
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "State Provider Number",
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    DecrementButton(),
                    Text(
                      counterBloc.counter.toString(),
                      style: TextStyle(fontSize: 62.0, color: Colors.black),
                    ),
                    IncrementButton(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ResetButton(),
                  ],
                ),
                Divider(height: 5.0, color: Colors.grey),
                Text(
                  "State Provider Validation",
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                ),
                InputForm(),
              ],
            )
          ),
        )
    );
  }
}