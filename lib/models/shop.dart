import 'package:flutter/material.dart';

import 'package:mad_project/models/product.dart';

class Shop extends ChangeNotifier {
  //khusas Collections
  final List<Product> _shop7 = [
    Product(
      name: 'Silver Beats',
      price: 15.99,
      description:
          '  Dance at your own rhythm while I rock the space that you walk as conquering the night with your light., ',
      image: 'images/z (1).jpg',
    ),
    Product(
      name: 'Black Khussa',
      price: 13.99,
      description:
          'This exquisite velvet maroon kolhapuri is a modern feminine take on your basic kolhapuri',
      image: 'images/z (2).jpg',
    ),
    Product(
      name: 'Red Khussa',
      price: 20.00,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/k9.jpg',
    ),
    Product(
      name: 'STyle Yourself',
      price: 13.99,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/k (7).jpg',
    ),
    Product(
      name: 'BAREERA (BLACK)',
      price: 14.99,
      description:
          'A black makhmal and tulle perfection. ‘Zarqi’ is a high-end fit for all the festive attires.',
      image: 'images/k8.jpg',
    ),
    Product(
      name: 'MAHEER',
      price: 99.99,
      description:
          '“Maheer”  black makhmal peshawri shaped khussa features an exquisite mix of hand instructed jewels . ',
      image: 'images/k1.jpg',
    ),
  ];
  final List<Product> _shop5 = [
    Product(
      name: 'PUNK ROCK (PINK)',
      price: 15.99,
      description:
          '  Dance at your own rhythm while I rock the space that you walk as conquering the night with your light., ',
      image: 'images/t.jpg',
    ),
    Product(
      name: 'Blue',
      price: 13.99,
      description:
          'This exquisite velvet maroon kolhapuri is a modern feminine take on your basic kolhapuri',
      image: 'images/t1.jpg',
    ),
    Product(
      name: 'AZEEBA',
      price: 20.00,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/z6.jpg',
    ),
    Product(
      name: 'STyle Yourself',
      price: 13.99,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/z7.jpg',
    ),
    Product(
      name: 'BAREERA (BLACK)',
      price: 14.99,
      description:
          'A black makhmal and tulle perfection. ‘Zarqi’ is a high-end fit for all the festive attires.',
      image: 'images/z9.jpg',
    ),
    Product(
      name: 'MAHEER',
      price: 99.99,
      description:
          '“Maheer”  black makhmal peshawri shaped khussa features an exquisite mix of hand instructed jewels . ',
      image: 'images/t4.jpg',
    ),
  ];
  final List<Product> _shop6 = [
    Product(
      name: 'PUNK ROCK (PINK)',
      price: 15.99,
      description:
          '  Dance at your own rhythm while I rock the space that you walk as conquering the night with your light., ',
      image: 'images/z2.jpg',
    ),
    Product(
      name: 'AZEERA (MAROON)',
      price: 13.99,
      description:
          'This exquisite velvet maroon kolhapuri is a modern feminine take on your basic kolhapuri',
      image: 'images/z3.jpg',
    ),
    Product(
      name: 'AZEEBA',
      price: 20.00,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/t9.jpg',
    ),
    Product(
      name: 'STyle Yourself',
      price: 13.99,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/t8.jpg',
    ),
    Product(
      name: 'BAREERA (BLACK)',
      price: 14.99,
      description:
          'A black makhmal and tulle perfection. ‘Zarqi’ is a high-end fit for all the festive attires.',
      image: 'images/f (3).jpg',
    ),
    Product(
      name: 'MAHEER',
      price: 99.99,
      description:
          '“Maheer”  black makhmal peshawri shaped khussa features an exquisite mix of hand instructed jewels . ',
      image: 'images/f (4).jpg',
    ),
  ];
  //Clutches and Sendles
  final List<Product> _shop8 = [
    Product(
      name: 'PUNK ROCK (PINK)',
      price: 15.99,
      description:
          '  Dance at your own rhythm while I rock the space that you walk as conquering the night with your light., ',
      image: 'images/k (2).jpg',
    ),
    Product(
      name: 'Blue',
      price: 13.99,
      description:
          'This exquisite velvet maroon kolhapuri is a modern feminine take on your basic kolhapuri',
      image: 'images/k (10).jpg',
    ),
    Product(
      name: 'AZEEBA',
      price: 20.00,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/k (11).jpg',
    ),
    Product(
      name: 'STyle Yourself',
      price: 13.99,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/g1.jpg',
    ),
    Product(
      name: 'BAREERA (BLACK)',
      price: 14.99,
      description:
          'A black makhmal and tulle perfection. ‘Zarqi’ is a high-end fit for all the festive attires.',
      image: 'images/g2.jpg',
    ),
    Product(
      name: 'MAHEER',
      price: 99.99,
      description:
          '“Maheer”  black makhmal peshawri shaped khussa features an exquisite mix of hand instructed jewels . ',
      image: 'images/g3.jpg',
    ),
  ];
  final List<Product> _shop9 = [
    Product(
      name: 'PUNK ROCK (PINK)',
      price: 15.99,
      description:
          '  Dance at your own rhythm while I rock the space that you walk as conquering the night with your light., ',
      image: 'images/g4.jpg',
    ),
    Product(
      name: 'AZEERA (MAROON)',
      price: 13.99,
      description:
          'This exquisite velvet maroon kolhapuri is a modern feminine take on your basic kolhapuri',
      image: 'images/g5.jpg',
    ),
    Product(
      name: 'AZEEBA',
      price: 20.00,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/f (1).jpg',
    ),
    Product(
      name: 'STyle Yourself',
      price: 13.99,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/g.jpg',
    ),
    Product(
      name: 'BAREERA (BLACK)',
      price: 14.99,
      description:
          'A black makhmal and tulle perfection. ‘Zarqi’ is a high-end fit for all the festive attires.',
      image: 'images/k (6).jpg',
    ),
    Product(
      name: 'MAHEER',
      price: 99.99,
      description:
          '“Maheer”  black makhmal peshawri shaped khussa features an exquisite mix of hand instructed jewels . ',
      image: 'images/g10.jpg',
    ),
  ];
  final List<Product> _shop10 = [
    Product(
      name: 'PUNK ROCK (PINK)',
      price: 15.99,
      description:
          '  Dance at your own rhythm while I rock the space that you walk as conquering the night with your light., ',
      image: 'images/C1.jpg',
    ),
    Product(
      name: 'Blue',
      price: 13.99,
      description:
          'This exquisite velvet maroon kolhapuri is a modern feminine take on your basic kolhapuri',
      image: 'images/C2.jpg',
    ),
    Product(
      name: 'AZEEBA',
      price: 20.00,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/k (3).jpg',
    ),
  ];

  //Lehanga

  final List<Product> _shop3 = [
    Product(
      name: 'Preety Mayoh Dress',
      price: 15000.99,
      description:
          ' Red and maroon heavily embroidered and embellished dresses are perfect for your Mehndi events.., ',
      image: 'images/m.jpg',
    ),
    Product(
      name: 'Laddo Peela ',
      price: 13000.99,
      description: 'Perfect for Mehndi Events',
      image: 'images/m1.jpg',
    ),
    Product(
      name: 'Red Lehanga',
      price: 14000.99,
      description: 'Perfect for Barat Events',
      image: 'images/b2.jpg',
    ),
    Product(
      name: 'Nikkah Lehnga',
      price: 16000.99,
      description: 'Perfect for Nikkah Events',
      image: 'images/n.jpg',
    ),
    Product(
      name: 'Unique Lehnga',
      price: 12000.99,
      description: 'Perfect for Barat Events',
      image: 'images/b.png',
    ),
  ];

  final List<Product> _shop4 = [
    Product(
      name: 'Engagment dress',
      price: 15000.99,
      description:
          ' Red and maroon heavily embroidered and embellished dresses are perfect for your Mehndi events.., ',
      image: 'images/b1.jpg',
    ),
    Product(
      name: 'Laddo Peela ',
      price: 13000.99,
      description: 'Perfect for Mehndi Events',
      image: 'images/m1.jpg',
    ),
    Product(
      name: 'Walima ',
      price: 14000.99,
      description: 'Perfect for Barat Events',
      image: 'images/y.jpg',
    ),
    Product(
      name: 'Nikkah Lehnga',
      price: 16000.99,
      description: 'Perfect for Nikkah Events',
      image: 'images/l9.jpg',
    ),
    Product(
      name: 'Marroon Lehnga',
      price: 12000.99,
      description: 'Perfect for Barat Events',
      image: 'images/y1.jpg',
    ),
  ];

  final List<Product> _shop2 = [
    Product(
      name: 'Preety Mayoh Dress',
      price: 15000.99,
      description:
          ' Red and maroon heavily embroidered and embellished dresses are perfect for your Mehndi events.., ',
      image: 'images/m.jpg',
    ),
    Product(
      name: 'Laddo Peela ',
      price: 13000.99,
      description: 'Perfect for Mehndi Events',
      image: 'images/m1.jpg',
    ),
    Product(
      name: 'Red Lehanga',
      price: 14000.99,
      description: 'Perfect for Barat Events',
      image: 'images/l10.jpg',
    ),
    Product(
      name: 'Nikkah Lehnga',
      price: 16000.99,
      description: 'Perfect for Nikkah Events',
      image: 'images/l9.jpg',
    ),
    Product(
      name: 'Marroon Lehnga',
      price: 12000.99,
      description: 'Perfect for Barat Events',
      image: 'images/l6.jpg',
    ),
  ];

  final List<Product> _shop1 = [
    Product(
      name: 'Maroon Lehnga',
      price: 15000.99,
      description:
          ' Red and maroon heavily embroidered and embellished dresses are perfect for your barat events.., ',
      image: 'images/l.jpg',
    ),
    Product(
      name: 'Peach Lehnga',
      price: 13000.99,
      description: 'Perfect for walima Events',
      image: 'images/l3.jpg',
    ),
    Product(
      name: 'Red Lehanga',
      price: 14000.99,
      description: 'Perfect for Barat Events',
      image: 'images/l4.jpg',
    ),
    Product(
      name: 'Nikkah Lehnga',
      price: 16000.99,
      description: 'Perfect for Nikkah Events',
      image: 'images/l1.jpg',
    ),
    Product(
      name: 'Marroon Lehnga',
      price: 12000.99,
      description: 'Perfect for Barat Events',
      image: 'images/l5.jpg',
    ),
  ];
  final List<Product> _shop = [
    Product(
      name: 'PUNK ROCK (PINK)',
      price: 15.99,
      description:
          '  Dance at your own rhythm while I rock the space that you walk as conquering the night with your light., ',
      image: 'images/k (1).jpg',
    ),
    Product(
      name: 'AZEERA (MAROON)',
      price: 13.99,
      description:
          'This exquisite velvet maroon kolhapuri is a modern feminine take on your basic kolhapuri',
      image: 'images/k (2).jpg',
    ),
    Product(
      name: 'AZEEBA',
      price: 20.00,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/k (3).jpg',
    ),
    Product(
      name: 'STyle Yourself',
      price: 13.99,
      description:
          'Give yourself the Queen treatment you rightly deserve by pairing me with most of your festive attires” says Azeeba.',
      image: 'images/k (4).jpg',
    ),
    Product(
      name: 'BAREERA (BLACK)',
      price: 14.99,
      description:
          'A black makhmal and tulle perfection. ‘Zarqi’ is a high-end fit for all the festive attires.',
      image: 'images/k (5).jpg',
    ),
    Product(
      name: 'MAHEER',
      price: 99.99,
      description:
          '“Maheer”  black makhmal peshawri shaped khussa features an exquisite mix of hand instructed jewels . ',
      image: 'images/k1.jpg',
    ),
  ];
  //user Cart
  final List<Product> _cart = [];
  //get product list
  List<Product> get shop => _shop;
  List<Product> get shop1 => _shop1;
  List<Product> get shop2 => _shop2;
  List<Product> get shop3 => _shop3;
  List<Product> get shop4 => _shop4;
  List<Product> get shop5 => _shop5;
  List<Product> get shop6 => _shop6;
  List<Product> get shop7 => _shop7;
  List<Product> get shop8 => _shop8;
  List<Product> get shop9 => _shop9;
  List<Product> get shop10 => _shop10;

  List<Product> get cart => _cart;

  //Add cart item
  void addtoCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeCartItem(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
