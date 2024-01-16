import 'package:flutter/material.dart';
import 'package:mad_project/components/product_tile.dart';
import 'package:mad_project/models/shop.dart';
import 'package:provider/provider.dart';

class KhusaaCollection extends StatelessWidget {
  const KhusaaCollection({super.key});

  @override
  Widget build(BuildContext context) {
    final products5 = context.watch<Shop>().shop5;
    final products6 = context.watch<Shop>().shop6;

    final products7 = context.watch<Shop>().shop7;

    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products5.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products5[index];
                    return MyProduct(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products7.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products7[index];
                    return MyProduct(product: product);
                  }),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products6.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products6[index];
                    return MyProduct(product: product);
                  }),
            ),
          ],
        )
      ],
    );
  }
}
