import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/alumni_login_page.dart';
import 'package:firebase_services_with_bloc/features/alumni/auth/login/presentation/widgets/auth_button.dart';
import 'package:firebase_services_with_bloc/features/student/auth/student_login.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                  fontSize: width * 0.07, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              'Choose The Type of Student ',
              style: TextStyle(fontSize: width * 0.04),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            AuthButton(
              label: "Alumni",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AlumniLoginPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: height * 0.03,
            ),
             AuthButton(label: "Student",   callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudentLoginPage(),
                  ),
                );
              },)
          ],
        ),
      ),
    );
  }
}
