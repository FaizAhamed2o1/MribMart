import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/themes/provider/theme_provider.dart';
import 'package:sizer/sizer.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      width: 70.w,
      child: ListView(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ListTile(
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
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
                title: const Text(
                  "Settings",
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(Icons.settings),
                onTap: () {},
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 5.w),
                title: const Text(
                  "Change Theme",
                  style: TextStyle(color: Colors.black),
                ),
                leading: const Icon(
                  Icons.change_circle_outlined,
                  color: Colors.amber,
                ),
                children: [
                  // light theme
                  ListTile(
                    title: const Text(
                      "Dark Theme",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: const Icon(Icons.dark_mode_outlined),
                    onTap: () {
                      ref.read(darkProvider.notifier).toggle();
                    },
                  ),
                  //dark theme
                  ListTile(
                    title: const Text(
                      "Light Theme",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: const Icon(Icons.light_mode_outlined),
                    onTap: () {
                      ref.read(darkProvider.notifier).toggle();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
