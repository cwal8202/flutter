import 'package:class_login_app/components/logo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 200),
              Logo('Care Soft'),
              const SizedBox(height: 200),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Get Started'))
            ],
          ),
        ),
      ),
    );
  }
}
