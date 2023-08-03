import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 50.5,
      child: ListView(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ListTile(
                dense: true,
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                dense: true,
                title: const Text(
                  "Profile",
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  "Notifications",
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(Icons.notifications),
                onTap: () {},
              ),
              ListTile(
                dense: true,
                title: const Text(
                  "Settings",
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(Icons.settings),
                onTap: () {},
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
