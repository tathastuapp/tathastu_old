import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselCardComponent extends StatefulWidget {
  @override
  _CarouselCardComponentState createState() => _CarouselCardComponentState();
}

class _CarouselCardComponentState extends State<CarouselCardComponent> {
  // final Duration autoplayDuration = const Duration(milliseconds: 300);

  List<String> photos = [];

  @override
    void initState() {
      photos = [
    'assets/ottoman.jpg',
    'assets/otto2.jpg',
    'assets/otto3.jpg',
    'assets/otto4.jpg'
  ];
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Carousel(
        autoplay: true,
        autoplayDuration: Duration(seconds: 3),
        dotSize: 6.0,
        borderRadius: true,
        radius: Radius.circular(16),
        dotSpacing: 15.0,
        dotIncreaseSize: 2.0,
        dotColor: Colors.deepOrange,
        showIndicator: false,
        indicatorBgPadding: 0.0,
        boxFit: BoxFit.fill,
        images: [
          new NetworkImage(
              'https://tathastu-b9137.firebaseapp.com/assets/images/home-slider/phone.jpg'),
          new NetworkImage(
              'https://tathastu-b9137.firebaseapp.com/assets/images/home-slider/cloths.jpg'),
          new NetworkImage(
              'https://tathastu-b9137.firebaseapp.com/assets/images/home-slider/gaming.jpg'),
          // new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          // new ExactAssetImage("assets/images/LaunchImage.jpg")
        ],
      ),
    );
  }
}