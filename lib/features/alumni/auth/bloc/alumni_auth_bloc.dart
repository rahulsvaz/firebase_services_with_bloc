import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'alumni_auth_event.dart';
part 'alumni_auth_state.dart';

class AlumniAuthBloc extends Bloc<AlumniAuthEvent, AlumniAuthState> {
  AlumniAuthBloc() : super(AlumniAuthInitial()) {
    on<AlumniAuthLoginEvent>((event, emit) {
    });
  }
}
