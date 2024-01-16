import 'package:flutter/material.dart';
import 'package:mad_project/components/product_tile.dart';
import 'package:mad_project/models/shop.dart';
import 'package:provider/provider.dart';

class LehangaCollection extends StatelessWidget {
  const LehangaCollection({super.key});

  @override
  Widget build(BuildContext context) {
    final products2 = context.watch<Shop>().shop2;
    final products3 = context.watch<Shop>().shop3;

    final products4 = context.watch<Shop>().shop4;

    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products2.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products2[index];
                    return MyProduct(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products3.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products3[index];
                    return MyProduct(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products4.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products4[index];
                    return MyProduct(product: product);
                  }),
            ),
          ],
        )
      ],
    );
  }
}
