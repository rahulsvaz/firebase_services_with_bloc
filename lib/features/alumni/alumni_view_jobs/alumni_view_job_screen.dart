import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AlumniViewJob extends StatefulWidget {
  const AlumniViewJob({super.key});

  @override
  State<AlumniViewJob> createState() => _AlumniViewJobState();
}

class _AlumniViewJobState extends State<AlumniViewJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Jobs'),),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('jobs').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  final doc = snapshot.data!.docs;
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: doc.length,
                      itemBuilder: (context, index) {
                        final data = doc[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Company Name :${data['company_name ']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Position :${data['position']}'),
                                ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('Place :${data['place']}'),
                                 ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Salary :${data['salary']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Apply Email :${data['email']}'),
                                ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('Hr Contact Number:${data['contact_number']}'),
                                 ),

                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: ElevatedButton(onPressed: (){}, child: const Text('Apply Now')),
                                 )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return const Center(
                    child: Text('no jobs posted'),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
