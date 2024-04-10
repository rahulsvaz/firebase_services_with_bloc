import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'student_auth_event.dart';
part 'student_auth_state.dart';

class StudentAuthBloc extends Bloc<StudentAuthEvent, StudentAuthState> {
  final auth = FirebaseAuth.instance;

  StudentAuthBloc() : super(StudentAuthInitial()) {
    on<StudentAuthSignUpEvent>(_studentAuthSignUpEvent);
    on<StudentAuthLoginEvent>(_studentAuthLoginEvent);
  }

  FutureOr<void> _studentAuthSignUpEvent(
      StudentAuthSignUpEvent event, Emitter<StudentAuthState> emit) async {
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: event.email, password: event.password)
          .then(
            (value) => auth.signOut(),
          );
    } catch (error) {
      log(error.toString());
    }
  }

  FutureOr<void> _studentAuthLoginEvent(
      StudentAuthLoginEvent event, Emitter<StudentAuthState> emit) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: event.email, password: event.password);
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }
}
