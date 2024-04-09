import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/bloc/alumni_auth_bloc.dart';
import 'package:firebase_services_with_bloc/features/alumni_home_screen/bloc/alumni_home_bloc.dart';
import 'package:firebase_services_with_bloc/features/alumni_home_screen/presentation/alumni_home_screen.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AlumniAuthBloc(),
        ),
        BlocProvider(
          create: (context) => AlumniHomeBloc(),
        ),
      ],
      child: MaterialApp(
        home: (FirebaseAuth.instance.currentUser != null)
            ? const AlumniHomeScreen()
            : const StartPage(),
      ),
    );
  }
}
