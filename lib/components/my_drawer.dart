import 'package:flutter/material.dart';
import 'package:netapp/components/my_drawer_tile.dart';
import 'package:netapp/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            //app logo
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Icon(
                Icons.lock_open_rounded,
                size: 40,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
                thickness: 1,
              ),
            ),
            MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),

            MyDrawerTile(
                text: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                }),

            const Spacer(),

            MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: () {}),

            const SizedBox(height: 20),

            // home list tile

            // settings list tile
          ],
        ));
  }
}
