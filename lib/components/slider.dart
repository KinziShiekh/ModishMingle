import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class ImageSliderWithIndicator extends StatefulWidget {
  const ImageSliderWithIndicator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageSliderWithIndicatorState createState() =>
      _ImageSliderWithIndicatorState();
}

class _ImageSliderWithIndicatorState extends State<ImageSliderWithIndicator> {
  int _currentIndex = 0;
  final List<String> _imagePaths = [
    'images/kiu.jpg',
    'images/lw.jpg',
    'images/q.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: _imagePaths.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Image.asset(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 10.0),
        DotsIndicator(
          dotsCount: _imagePaths.length,
          position: _currentIndex,
          decorator: const DotsDecorator(
            color: Colors.grey, // Inactive color
            activeColor: Colors.blue, // Active color
          ),
        ),
      ],
    );
  }
}
