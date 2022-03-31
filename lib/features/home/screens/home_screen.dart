import 'package:flutter/material.dart';

const _img =
    'https://i.pinimg.com/originals/f0/1c/62/f01c624f2790fbcf659e3bbff436bfab.png';
/*
  IOS

  Test.
  1. The increase of the items icons or texts in the application from the device screen.
  1.1 Also check with the video of Diego Developer (Allow to increase until a limit)
  2. The screen reader for each platform (Use the semantics)
  2.1 Use with the semantics of the screen exclude and merge semantics.

  Android

  Test.

  1. Implementation of the text works in the same way that Android
  2. Implementation of the screen reader way on the same way 
*/

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(_img),
                    radius: 48,
                  ),
                  SizedBox(height: 19),
                  Text('MyUsername'),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Payments'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.slideshow),
              title: const Text('Sliders'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log out'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
