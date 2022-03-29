import 'package:flutter/material.dart';

import '../../../core/routes.dart';

/*
  Android

  Test.
  1. The increase of the items icons or texts in the application from the device screen.
  1.1 Also check with the video of Diego Developer (Allow to increase until a limit)
  2. The screen reader for each platform (Use the semantics)
  2.1 Use with the semantics of the screen exclude and merge semantics.
  3. Just investigate the contrast on the screen

  NOTE: If the app use sounds make sure the sound is replaced by vibrations

  iOS

  Test.

  1. Implementation of the text works in the same way that Android
  2. Implementation of the screen reader way on the same way 
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
