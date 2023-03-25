import 'package:flutter/material.dart';

class SubjectListScreen extends StatelessWidget {
  const SubjectListScreen({super.key});

  final List subjectListData = const [
    {"subject_name": "Micro", "subject_id": "1001"},
    {"subject_name": "Modern Physics", "subject_id": "1002"},
    {"subject_name": "C++", "subject_id": "1003"},
    {"subject_name": "C Programming", "subject_id": "1004"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Subject List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ...subjectListData
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      onTap: () {
                        print(e['subject_id']);

                        
                      },
                      tileColor: Color.fromARGB(255, 185, 114, 157),
                      textColor: Colors.white,
                      iconColor: Colors.white,
                      title: Text(
                        e['subject_name'],
                      ),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
