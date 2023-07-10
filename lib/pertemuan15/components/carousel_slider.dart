import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouselsliderWidget extends StatelessWidget {
  const carouselsliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 300,
      child: CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('https://picsum.photos/$i'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'text $i',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              );
            });
          }).toList()),
    );
  }
}
