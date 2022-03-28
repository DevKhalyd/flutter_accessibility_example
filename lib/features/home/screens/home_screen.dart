import 'package:flutter/material.dart';

const _img =
    'https://happytravel.viajes/wp-content/uploads/2020/04/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png';
/*

IDEA:

1. Drawer with the items
2. Drawer Header
3. AppBar with the logout action

Basically a tipically application...
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
