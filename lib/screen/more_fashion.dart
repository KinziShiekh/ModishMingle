import 'package:flutter/material.dart';
import 'package:mad_project/components/my_drawer.dart';
import 'package:mad_project/screen/clutches.dart';
import 'package:mad_project/screen/khusas.dart';
import 'package:mad_project/screen/lehanga.dart';

class ShopPage2 extends StatelessWidget {
  const ShopPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            'Modish Mingle',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.lightGreen),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_screen'),
              icon: const Icon(
                Icons.shopping_cart_checkout_sharp,
                color: Colors.orange,
              ),
            )
          ],
          bottom: const TabBar(
            indicatorColor: Colors.lightGreen,
            unselectedLabelColor: Colors.orange,
            labelColor: Colors.green,
            enableFeedback: true,
            tabs: [
              Tab(text: 'Lehanga Collection'),
              Tab(text: 'Khussas Collection'),
              Tab(text: 'Clutches And Sandles'),
            ],
          ),
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: const TabBarView(
          children: [
            LehangaCollection(),
            KhusaaCollection(),
            CluctesCollection(),
          ],
        ),
      ),
    );
  }
}
