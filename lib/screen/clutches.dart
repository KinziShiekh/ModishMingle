import 'package:flutter/material.dart';
import 'package:mad_project/components/product_tile.dart';
import 'package:mad_project/models/shop.dart';
import 'package:provider/provider.dart';

class CluctesCollection extends StatelessWidget {
  const CluctesCollection({super.key});

  @override
  Widget build(BuildContext context) {
    final products8 = context.watch<Shop>().shop8;
    final products9 = context.watch<Shop>().shop9;

    final products10 = context.watch<Shop>().shop10;

    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products8.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products8[index];
                    return MyProduct(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products9.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products9[index];
                    return MyProduct(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products10.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products10[index];
                    return MyProduct(product: product);
                  }),
            ),
          ],
        )
      ],
    );
  }
}
