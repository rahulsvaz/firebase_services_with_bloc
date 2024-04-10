part of 'student_auth_bloc.dart';

sealed class StudentAuthEvent extends Equatable {
  const StudentAuthEvent();
  @override
  List<Object> get props => [];
}

class StudentAuthLoginEvent extends StudentAuthEvent {
  final String email;
  final String password;
  const StudentAuthLoginEvent({required this.email, required this.password});
  @override
  List<Object> get props => [email, password];
}

class StudentAuthSignUpEvent extends StudentAuthEvent {
  final String email;
  final String password;
  final String name;
  const StudentAuthSignUpEvent(
      {required this.email, required this.password, required this.name});
  @override
  List<Object> get props => [email, password, name];
}
