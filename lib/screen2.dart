import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klip_cart/screen3.dart';

class screen2 extends StatefulWidget {
  final String name;
  final String text;
  final String price;
  const screen2({super.key, required this.name, required this.text, required this.price});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: 1,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  color: Colors.white,
                  width: 500,
                  height: 150,
                  child: Image.asset(
                    widget.name,
                    fit: BoxFit.cover,
                  ),
                ),
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    initialPage: 2,
                    height: 300),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 18),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 36,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 360),
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                  size: 36,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Text(
              "colors",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  width: 115,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFF774488),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 115,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFFC9A19C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 115,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFFA1C89B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20, bottom: 15),
            child: Text(
              'Get Apple TV+ free for a year',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Text(
              'iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.',
              style: TextStyle(
                color: Color(0xFF212529),
                fontSize: 12,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontSize: 17,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 270,
                ),
                Text(
                  '\$599',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 50),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => screen3(image: widget.name,txt: widget.text,cash: widget.price,),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 59,
                decoration: ShapeDecoration(
                  color: Color(0xFFFB8500),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Add to cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF4FAFF),
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
