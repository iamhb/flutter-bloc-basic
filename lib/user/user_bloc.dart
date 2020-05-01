import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_demo/user/user_event.dart';
import 'package:bloc_demo/user/user_state.dart';
import 'package:meta/meta.dart';

// < give event as input, give state as output>
class UserBloc extends Bloc<UserEvent, UserState> {
  @override
  UserState get initialState => InitialUserState();

  // stream as return
  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    print("in map event to state");
    if (event is Name) {
      yield NewUserState.fromOldUserState(state, name: event.payload);
    } else if (event is Ispass) {
      print("in if user bloc payload");
      print(event.payload);
      print("state");
      print(state.ispass);
      yield NewUserState.fromOldUserState(state, ispass: event.payload);
    } else if (event is Age) {
      yield NewUserState.fromOldUserState(state, age: event.payload);
    }
  }
}
