import 'package:firebase_services_with_bloc/constant/size/sized.dart';
import 'package:firebase_services_with_bloc/features/alumni_post_job/post_job_scree.dart';
import 'package:flutter/material.dart';

class AlumniHomeScreen extends StatefulWidget {
  const AlumniHomeScreen({super.key});

  @override
  State<AlumniHomeScreen> createState() => _AlumniHomeScreen();
}

class _AlumniHomeScreen extends State<AlumniHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Height20(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AlumniCards(
                height: height,
                imagePath: 'assets/images/work.png',
                label: 'Post Jobs',
                callback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostJObScreen(),
                    ),
                  );
                },
              ),
              AlumniCards(
                height: height,
                imagePath: 'assets/images/work.png',
                label: 'Post Jobs',
              )
            ],
          ),
          SizedBox(
            height: height * 0.07,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AlumniCards(
                height: height,
                imagePath: 'assets/images/work.png',
                label: 'Post Jobs',
              ),
              AlumniCards(
                height: height,
                imagePath: 'assets/images/work.png',
                label: 'Post Jobs',
              )
            ],
          )
        ],
      ),
    );
  }
}

class AlumniCards extends StatelessWidget {
  const AlumniCards(
      {super.key,
      required this.height,
      required this.imagePath,
      required this.label,
      this.callback});

  final double height;
  final String imagePath;
  final String label;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      elevation: 10,
      child: GestureDetector(
        onTap: callback,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePath,
                height: height * 0.1,
              ),
            ),
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
