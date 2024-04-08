part of 'alumni_auth_bloc.dart';

sealed class AlumniAuthEvent extends Equatable {
  const AlumniAuthEvent();

  @override
  List<Object> get props => [];
}

class AlumniAuthLoginEvent extends AlumniAuthEvent {}

class AlumniAuthSignUpEvent extends AlumniAuthEvent {
  final String name;
  final String email;
  final String password;
  final BuildContext context;

  const AlumniAuthSignUpEvent(this.name, this.context,
      {required this.email, required this.password});

  @override
  List<Object> get props => [email, password, name];
}
