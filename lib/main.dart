import 'package:flutter/material.dart';
import 'package:flutter_provider/blocs/counter_bloc.dart';
import 'package:flutter_provider/blocs/form_bloc.dart';
import 'package:flutter_provider/pages/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(
          value: CounterBloc(),
        ),
        ChangeNotifierProvider<FormBloc>.value(
          value: FormBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: CounterPage(),
      ),
    );
  }
}
