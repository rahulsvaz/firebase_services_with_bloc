part of 'alumni_auth_bloc.dart';

sealed class AlumniAuthState extends Equatable {
  const AlumniAuthState();

  @override
  List<Object> get props => [];
}

final class AlumniAuthInitial extends AlumniAuthState {}

class AlumniAuthLoading extends AlumniAuthState {}

class AlumniAuthSuccess extends AlumniAuthState {}

class AlumniAuthFailure extends AlumniAuthState {}
