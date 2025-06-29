import 'package:flutter/material.dart';

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
