import 'package:booksynation/sidemenu.dart';
import 'package:flutter/material.dart';

class PatientSettings extends StatelessWidget {
  const PatientSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: Center(
        child: Text('Settings',
            style: TextStyle(
              fontSize: 72,
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
