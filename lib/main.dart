import 'package:bloc_demo/user/user.dart';
import 'package:flutter/material.dart';
import 'package:bloc_demo/user/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// void main() => runApp(MyApp());
void main() {
  final BlocProvider<UserBloc> blocProvider = BlocProvider<UserBloc>(
    create: (_) => UserBloc(),
    child: MyApp(),
  );

  runApp(blocProvider);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => User(),
      },
    );
  }
}
