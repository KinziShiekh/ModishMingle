import 'package:flutter/material.dart';
import 'package:mad_project/components/my_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DrawerHeader(
                  child: Center(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Colors.lightGreen,
                ),
              )),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          MyTile(
            text: 'Home',
            icon: Icons.home,
            onTap: () {
              Navigator.pushNamed(context, '/shop_page');
            },
          ),
          MyTile(
            text: 'Check Cart',
            icon: Icons.shopping_cart,
            onTap: () {
              Navigator.pushNamed(context, '/cart_screen');
            },
          ),
          MyTile(
            text: 'More Fashion',
            icon: Icons.list,
            onTap: () {
              Navigator.pushNamed(context, '/more');
            },
          ),
          MyTile(
            text: 'Exit',
            icon: Icons.logout,
            onTap: () {
              Navigator.pushNamed(context, '/welcome_page');
            },
          )
        ],
      ),
    );
  }
}
