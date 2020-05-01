import 'package:flutter/material.dart';

@immutable
abstract class UserEvent {
  final dynamic payload;
  UserEvent(this.payload);
}

class Name extends UserEvent {
  Name(String payload) : super(payload);
}

class Age extends UserEvent {
  Age(int payload) : super(payload);
}

class Ispass extends UserEvent {
  Ispass(bool payload) : super(payload) {
    print("in ispass");
    print(payload);
  }
}
