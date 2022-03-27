import 'package:flutter/material.dart';

class ProfileEndDrawer extends StatelessWidget {
  const ProfileEndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Text("Drawer Header")
            ),

            ListTile(
              title: Text("Item"),
            )
          ],
        ),
      ),
    );
  }
}