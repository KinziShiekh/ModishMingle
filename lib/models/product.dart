import 'package:mad_project/components/my_button.dart';

class Product {
  final String name;
  final double price;
  final String description;
  final String image;
  final MyButton? myButton;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    this.myButton,
  });
}
