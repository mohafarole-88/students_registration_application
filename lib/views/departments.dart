import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:students_registration_application/data/departments_list.dart';

class Departments extends StatelessWidget {
  const Departments({super.key});

  @override
  Widget build(BuildContext context) {
    final groupedDepartments =
        groupBy(depList, (DeparmentsList dep) => dep.dep_category);
    return Scaffold(
      body: ListView.builder(
        itemCount: groupedDepartments.keys.length,
        itemBuilder: (context, index) {
          final category = groupedDepartments.keys.elementAt(index);
          final departments = groupedDepartments[category]!;
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.shade300,
              ),
              child: ExpansionTile(
                title: Text(
                  "$category Departments",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: departments.map((department) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text("${departments.indexOf(department) + 1}"),
                      ),
                      title: Text(department.dep_name),
                      trailing: CircleAvatar(
                        backgroundImage: department.dep_Logo.image,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
