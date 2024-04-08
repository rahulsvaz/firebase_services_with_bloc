part of 'alumni_auth_bloc.dart';

sealed class AlumniAuthEvent extends Equatable {
  const AlumniAuthEvent();

  @override
  List<Object> get props => [];
}

class AlumniAuthLoginEvent extends AlumniAuthEvent {}

class AlumniAuthSignUpEvent extends AlumniAuthEvent {}
