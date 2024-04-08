


import 'package:firebase_services_with_bloc/constant/size/sized.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/action_button.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/auth_button.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/textfield.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/signup/presentation/alumni_sign_up.dart';
import 'package:firebase_services_with_bloc/features/student/auth/student_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StudentLoginPage extends StatefulWidget {
  const StudentLoginPage({super.key});

  @override
  State<StudentLoginPage> createState() => _StudentLoginPageState();
}

class _StudentLoginPageState extends State<StudentLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login As Student'),
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
                        builder: (context) => StudentSignUp(),
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
