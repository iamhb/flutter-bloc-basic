// part of 'user_bloc.dart';

abstract class UserState {
  String name;
  bool ispass;
  int age;

  UserState({this.name, this.ispass, this.age});
}

class InitialUserState extends UserState {
  InitialUserState() : super(name: "hb", ispass: true, age: 10);
}

class NewUserState extends UserState {
  NewUserState.fromOldUserState(UserState oldState,
      {String name, bool ispass, int age})
      : super(
          name: name ?? oldState.name,
          ispass: ispass ?? oldState.ispass,
          age: age ?? oldState.age,
        ) {
    print("in new usersstte ---");
    print(oldState.ispass);
  }
}
