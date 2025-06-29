import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

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

class DeparmentsList {
  final String dep_name;
  final String dep_category;
  final Image dep_Logo;

  DeparmentsList({
    required this.dep_name,
    required this.dep_category,
    required this.dep_Logo,
  });
}

final List<DeparmentsList> depList = [
  DeparmentsList(
    dep_name: "Software Engineering",
    dep_category: "Computing",
    dep_Logo: Image.asset("images/software_engineering.png"),
  ),
  DeparmentsList(
    dep_name: "Networking & Cyber Security",
    dep_category: "Computing",
    dep_Logo: Image.asset("images/networking.png"),
  ),
  DeparmentsList(
    dep_name: "Medical Laboratory",
    dep_category: "Health Science",
    dep_Logo: Image.asset("images/lab.png"),
  ),
  DeparmentsList(
    dep_name: "Nursing",
    dep_category: "Health Science",
    dep_Logo: Image.asset("images/nurses.png"),
  ),
  DeparmentsList(
    dep_name: "Pharmacology",
    dep_category: "Health Science",
    dep_Logo: Image.asset("images/pharmacy.png"),
  ),
  DeparmentsList(
    dep_name: "Midwifery",
    dep_category: "Health Science",
    dep_Logo: Image.asset("images/midwife.png"),
  ),
  DeparmentsList(
    dep_name: "Human Resource Management (HRM)",
    dep_category: "Management Science",
    dep_Logo: Image.asset("images/hrm.png"),
  ),
  DeparmentsList(
    dep_name: "Business Administration",
    dep_category: "Management Science",
    dep_Logo: Image.asset("images/bba.png"),
  ),
  DeparmentsList(
    dep_name: "Accounting & Finance",
    dep_category: "Management Science",
    dep_Logo: Image.asset("images/accounting.png"),
  ),
  DeparmentsList(
    dep_name: "Economic",
    dep_category: "Management Science",
    dep_Logo: Image.asset("images/economic.png"),
  ),
  DeparmentsList(
    dep_name: "Public Administration",
    dep_category: "Social Science",
    dep_Logo: Image.asset("images/pba.png"),
  ),
  DeparmentsList(
    dep_name: "Social Work",
    dep_category: "Social Science",
    dep_Logo: Image.asset("images/social_work.png"),
  ),
  DeparmentsList(
    dep_name: "Civil Engineering",
    dep_category: "Engineering",
    dep_Logo: Image.asset("images/civil_engineering.png"),
  ),
  DeparmentsList(
    dep_name: "Architectural Engineering",
    dep_category: "Engineering",
    dep_Logo: Image.asset("images/architectural_engineering.png"),
  ),
  DeparmentsList(
    dep_name: "Mechanical Engineering",
    dep_category: "Engineering",
    dep_Logo: Image.asset("images/mechanical_engineering.png"),
  ),
];
