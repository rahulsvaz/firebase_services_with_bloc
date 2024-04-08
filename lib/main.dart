import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/bloc/alumni_auth_bloc.dart';
import 'package:firebase_services_with_bloc/features/start_up_page/start_page.dart';
import 'package:firebase_services_with_bloc/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlumniAuthBloc(),
      child: const MaterialApp(
        home: StartPage(),
      ),
    );
  }
}
