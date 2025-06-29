import 'package:flutter/material.dart';
import 'package:students_registration_application/views/departments.dart';
import 'package:students_registration_application/views/faculties.dart';
import 'package:students_registration_application/views/registration.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _currentIndex = 0; // Track the current index

  // List of pages to navigate
  final List<Widget> _pages = [
    Registration(),
    Faculties(),
    Departments(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        title: Text(
          "Main Dashboard",
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
      body: _pages[_currentIndex], // Display the current page
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal.shade800,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        iconSize: 25.0,
        currentIndex: _currentIndex, // Set the current index
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_outlined),
            label: "Registration",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_for_education),
            label: "Faculties",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: "Departments",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
        },
      ),
    );
  }
}
