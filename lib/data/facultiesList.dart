import 'package:flutter/material.dart';

class Facultieslist {
  final String F_name;
  final Image F_Logo;

  Facultieslist({required this.F_name, required this.F_Logo});
}

final List<Facultieslist> faculties_list = [
  Facultieslist(
    F_name: "Faculty of Computing",
    F_Logo: Image.asset("images/computing.png"),
  ),
  Facultieslist(
    F_name: "Faculty of Health Science",
    F_Logo: Image.asset("images/health.png"),
  ),
  Facultieslist(
    F_name: "Faculty of Agriculture",
    F_Logo: Image.asset("images/agriculture.png"),
  ),
  Facultieslist(
    F_name: "Faculty of Engineering",
    F_Logo: Image.asset("images/engineer.png"),
  ),
  Facultieslist(
    F_name: "Faculty of Management Science",
    F_Logo: Image.asset("images/management.png"),
  ),
  Facultieslist(
    F_name: "Faculty of Sharia and Law",
    F_Logo: Image.asset("images/law.png"),
  ),
  Facultieslist(
    F_name: "Faculty of Social Science",
    F_Logo: Image.asset("images/social_science.png"),
  ),
];
