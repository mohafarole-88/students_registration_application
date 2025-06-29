import 'package:flutter/material.dart';
import 'package:students_registration_application/Widgets/RegistrationFormFields.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 5.0,
          color: Colors.grey.shade400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Student Registration',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              RegistrationFormFields(
                keyboardType: TextInputType.name,
                hintText: "FullName",
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                ),
              ),
              RegistrationFormFields(
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                prefixIcon: Icon(
                  Icons.mail,
                ),
              ),
              RegistrationFormFields(
                keyboardType: TextInputType.phone,
                hintText: "+252 90...",
                prefixIcon: Icon(
                  Icons.phone,
                ),
              ),
              RegistrationFormFields(
                keyboardType: TextInputType.text,
                hintText: "Faculty",
                prefixIcon: Icon(
                  Icons.cast_for_education,
                ),
              ),
              RegistrationFormFields(
                keyboardType: TextInputType.text,
                hintText: "Department",
                prefixIcon: Icon(
                  Icons.apartment,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Submit')),
                  ElevatedButton(onPressed: () {}, child: Text('Clear'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
