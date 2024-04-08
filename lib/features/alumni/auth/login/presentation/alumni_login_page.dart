import 'package:firebase_services_with_bloc/constant/size/sized.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/action_button.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/auth_button.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/textfield.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/signup/presentation/alumni_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AlumniLoginPage extends StatefulWidget {
  const AlumniLoginPage({super.key});

  @override
  State<AlumniLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<AlumniLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login as Alumni'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animation/login.json',
                height: 300,
              ),
              const Height20(),
              const CustomTextField(
                label: 'Email',
              ),
              const Height20(),
              const CustomTextField(label: 'Password'),
              const Height20(),
              const AuthButton(
                label: 'Login',
              ),
              AccountActionButton(
                  callback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlumniSignUpPage(),
                      ),
                    );
                  },
                  statusText: 'Dont Have An Account',
                  label: 'Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}
