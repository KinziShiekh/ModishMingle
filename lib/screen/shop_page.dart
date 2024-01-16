import 'package:flutter/material.dart';
import 'package:mad_project/components/my_drawer.dart';
import 'package:mad_project/components/product_tile.dart';
import 'package:mad_project/components/slider.dart';
import 'package:mad_project/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    final products1 = context.watch<Shop>().shop1;

    return Scaffold(
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
                  size: 20,
                  color: Colors.orange,
                ))
          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),

            //shop subtitle
            const Center(
              child: Text(
                'Upgrade your style with Premium Picks.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
            ),
            //product list
            const ImageSliderWithIndicator(),
            Column(
              children: [
                SizedBox(
                  height: 550,
                  child: ListView.builder(
                      itemCount: products.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(15),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return MyProduct(product: product);
                      }),
                ),
                const Text(
                  'Lehanga Collection',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                SizedBox(
                  height: 550,
                  child: ListView.builder(
                      itemCount: products1.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(15),
                      itemBuilder: (context, index) {
                        final product = products1[index];
                        return MyProduct(product: product);
                      }),
                ),
              ],
            ),
          ],
        ));
  }
}
