import 'package:flutter/material.dart';
import 'package:mad_project/components/my_button.dart';

// ignore: camel_case_types
class Welcome_page extends StatelessWidget {
  const Welcome_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 80,
              color: Colors.lightGreen,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Modish Mingle',
              style: TextStyle(
                fontSize: 30,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Awesome Quality Product',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MyButton(
                  color: Colors.lightGreen,
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
