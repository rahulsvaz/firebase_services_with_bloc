

import 'package:firebase_services_with_bloc/constant/size/sized.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/action_button.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/auth_button.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StudentSignUp extends StatefulWidget {
  const StudentSignUp({super.key});

  @override
  State<StudentSignUp> createState() => _StudentSignUpPageState();
}

class _StudentSignUpPageState extends State<StudentSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('assets/animation/signUp.json', height: 300),
              const Height20(),
              const CustomTextField(label: 'Name'),
              const Height20(),
              const CustomTextField(label: 'email'),
              const Height20(),
              const CustomTextField(label: 'Password'),
              const Height20(),
              const AuthButton(label: 'SignUp'),
              const Height20(),
              AccountActionButton(
                  statusText: "Already have an account back to",
                  label: "Login",
                  callback: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
