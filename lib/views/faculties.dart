import 'package:flutter/material.dart';
import 'package:students_registration_application/views/facultiesList.dart';

class Faculties extends StatelessWidget {
  const Faculties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: faculties_list.length,
          itemBuilder: (context, index) {
            final faculty = faculties_list[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal.shade700,
                    child: Text(
                      "${index + 1}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundImage: faculty.F_Logo.image,
                  ),
                  title: Text(
                    faculty.F_name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
