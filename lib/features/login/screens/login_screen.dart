import 'package:flutter/material.dart';

import '../../../core/routes.dart';

/*
  IDEA: Basically create a login to test the accesibility of the app.

  1. LargeIcon
  2. TextField (Username)
  3. TextField (Password)
  4. Button (Login)
  5. Button (Register)
  6. Button (Forgot Password)

  Test.
  1. The increase of the items icons or texts in the application from the device screen.
  2. The screen reader for each platform (Use the semantics)
  3. The contrast on the screen
 */

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  // TODO: Test the data of the accesisbility.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.assignment_ind_outlined,
            size: 64,
          ),
          const SizedBox(height: 36),
          const TextFieldCustom(label: 'Username'),
          const SizedBox(height: 32),
          const TextFieldCustom(label: 'Password'),
          const SizedBox(height: 64),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }
}
