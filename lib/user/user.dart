import 'package:bloc_demo/user/user_bloc.dart';
import 'package:bloc_demo/user/user_event.dart';
import 'package:bloc_demo/user/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "data ----" +
                        state.name +
                        "boolean----" +
                        state.ispass.toString(),
                  ),
                  Checkbox(
                    value: state.ispass,
                    onChanged: (value) {
                      print("cliced");
                      userBloc.add(Ispass(value));
                    },
                  ),
                  Text("is pass"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
