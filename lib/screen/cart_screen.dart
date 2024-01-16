import 'package:flutter/material.dart';
import 'package:mad_project/components/my_button.dart';
import 'package:mad_project/models/product.dart';
import 'package:mad_project/models/shop.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class Cart_Screen extends StatelessWidget {
  const Cart_Screen({super.key});
  void removeItemCart(BuildContext context, Product product) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text('Remove this Item Scussessfully'),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().removeCartItem(product);
                  },
                  child: const Text('Yes'),
                )
              ],
            ));
  }

  void payButtonPress(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              content: Text(
                  'User Wants to pay! Connect This app To yOur payment methods '),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Cart Page',
          style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: cart.isEmpty
                  ? const Center(child: Text('Your Cart I s Empty.....'))
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];
                        return ListTile(
                          leading: Image.asset(item.image),
                          title: Text(item.name),
                          subtitle: Text(item.price.toStringAsFixed(2)),
                          trailing: IconButton(
                              onPressed: () => removeItemCart(context, item),
                              icon: const Icon(Icons.remove)),
                        );
                      })),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
              onTap: () => payButtonPress(context),
              child: const Text('Pay Now'),
              color: Colors.lightGreen,
            ),
          )
        ],
      ),
    );
  }
}
