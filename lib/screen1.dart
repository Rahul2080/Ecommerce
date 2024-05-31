import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:klip_cart/screen2.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  List<String> scroller = [
    "assets/frame.png",
    "assets/frame1.png",
    "assets/frame2.png"
  ];
  List<String> piclistview1 = [
    "assets/system.png",
    "assets/watch.png",
    "assets/macbook.png",
    "assets/iphone.png"
  ];
  List<String> textlistview1 = [
    " apple iMac \n24 (2021)",
    'Apple Watch SE\n  (2021)',
    'MacBook Pro 16-inch \n(2021) ',
    'iphone 13 mini\n(2021)',
  ];
  List<String> pricelistview1 = [
    "  \$1299 ",
    '\$279',
    '\$2499',
    '\$729',
  ];
  List<String> ratelistview1 = [
    '4.9',
    '4.9',
    '4.9',
    '4.1',
  ];
  List<String> piclistview2 = [
    "assets/phones.png",
    "assets/watch2.png",
    "assets/macpc.png",
    "assets/macmini.png"
  ];
  List<String> textlistview2 = [
    'iPad mini \n8.3-inch  (2021)',
    'Apple Watch \nSe ries 3',
    'apple iMac \n27”',
    'mac mini\n(2021)',
  ];
  List<String> pricelistview2 = [
    '\$499',
    '\$199',
    '\$1500',
    '\$699',
  ];
  List<String> ratelistview2 = [
    '4.9',
    '4.9',
    '4.9',
    '4.9',
  ];
  List<String> piclistview3 = [
    "assets/redapple.png",
    "assets/appleipad.png",
    "assets/macpc2.png",
    "assets/macbook2.png"
  ];
  List<String> textlistview3 = [
    'iPhone',
    'iPad',
    'mac',
    'macbooks',
  ];
  List<String> piclistview4 = [
    "assets/iphone1.png",
    "assets/iphone2.png",
    "assets/iphone3.png",
    "assets/iphone4.png"
  ];
  List<String> textlistview4 = [
    'iPhone SE \n(2020)',
    'iPhone 12 mini\n(2020)',
    'iPhone 13\n(2021)',
    'iphone 13 mini\n(2021)',
  ];
  List<String> pricelistview4 = [
    '\$399',
    '\$729',
    '\$829',
    '\$729',
  ];
  List<String> ratelistview4 = ["4.6", "4.5", "4.1", "4.1"];
  List<String> piclistview5 = [
    "assets/ipad1.png",
    "assets/ipad2.png",
    "assets/ipad3.png",
    "assets/ipad4.png"
  ];
  List<String> textlistview5 = [
    'iPad Air 10.9 inch  (2021)',
    'iPad 10.2-inch \n(2021)',
    'iPad mini 8.3-inch  (2021)',
    'iPad Pro 12.9-inch  (2021)',
  ];
  List<String> pricelistview5 = [
    '\$599',
    '\$329',
    '\$499',
    '\$1099',
  ];
  List<String> ratelistview5 = ["4.9", "4.1", "4.9", "4.9"];

  List<String> piclistview6 = [
    "assets/mac1.png",
    "assets/mac2.png",
    "assets/mac3.png",
    "assets/mac4.png",
  ];
  List<String> textlistview6 = [
    'Pro Display XDR\n32-inch',
    'apple iMac \n24” (2021)',
    'apple iMac \n27”',
    'Mac Pro\n(2020)',
  ];
  List<String> pricelistview6 = [
    '\$4999',
    '\$1299',
    '\$1500',
    '\$5999',
  ];
  List<String> ratelistview6 = ["4.9", "4.9", "4.9", "4.9"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            'iDrip ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF02040F),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Icon(
            Icons.search,
            size: 40,
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            "assets/drawer.png",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: scroller.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                color: const Color(0xFF252837),
                width: 500,
                height: 70,
                child: Image.asset(
                  scroller[itemIndex],
                  fit: BoxFit.cover,
                ),
              ),
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  initialPage: 2,
                  height: 200),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text(
                    'Hot Deals',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView.separated(
                  itemCount: piclistview1.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => screen2(
                                    name: piclistview1[index],
                                    text: textlistview1[index],
                                    price:  pricelistview1[index],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              color: Colors.white,
                              width: 170,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 110,
                                    height: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Image.asset(
                                        piclistview1[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      textlistview1[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF212529),
                                        fontSize: 15,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      pricelistview1[index],
                                      style: TextStyle(
                                        color: Color(0xFF212529),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: RatingBar.builder(
                                          initialRating: 1,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 1,
                                          itemSize: 20,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 4),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        ratelistview1[index],
                                        style: TextStyle(
                                          color: Color(0xFF212529),
                                          fontSize: 12,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 120, left: 140),
                            child: index == 0
                                ? Icon(
                                    Icons.bookmark,
                                    color: Colors.orangeAccent,
                                  )
                                : Icon(
                                    Icons.bookmark_border,
                                  )),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text(
                    'MostPoplular',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView.separated(
                  itemCount: piclistview2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Container(
                            color: Colors.white,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 110,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      piclistview2[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    textlistview2[index],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    pricelistview2[index],
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: RatingBar.builder(
                                        initialRating: 1,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 1,
                                        itemSize: 20,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      ratelistview2[index],
                                      style: TextStyle(
                                        color: Color(0xFF212529),
                                        fontSize: 12,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 120, left: 140),
                          child: Icon(
                            Icons.bookmark_border,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text(
                    'CATEGORIES',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 179,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView.separated(
                  itemCount: piclistview3.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Container(
                        color: Colors.white,
                        width: 170,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: index == 0 ? 120 : 160,
                              height: index == 1 ? 140 : 130,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Image.asset(
                                  piclistview3[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              textlistview3[index],
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Color(0xFF212529),
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text(
                    'iphones',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 270,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView.separated(
                  itemCount: piclistview4.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Container(
                            color: Colors.white,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 110,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      piclistview4[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    textlistview4[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    pricelistview4[index],
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: RatingBar.builder(
                                        initialRating: 1,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 1,
                                        itemSize: 20,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      ratelistview4[index],
                                      style: TextStyle(
                                        color: Color(0xFF212529),
                                        fontSize: 12,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 120, left: 140),
                          child: index == 1
                              ? Icon(
                                  Icons.bookmark,
                                  color: Colors.orangeAccent,
                                )
                              : Icon(
                                  Icons.bookmark_border,
                                ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text(
                    'ipads',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 270,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView.separated(
                  itemCount: piclistview5.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Container(
                            color: Colors.white,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 110,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      piclistview5[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    textlistview5[index],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    pricelistview5[index],
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: RatingBar.builder(
                                        initialRating: 1,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 1,
                                        itemSize: 20,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      ratelistview5[index],
                                      style: TextStyle(
                                        color: Color(0xFF212529),
                                        fontSize: 12,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 120, left: 140),
                          child: Icon(
                            Icons.bookmark_border,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text(
                    'mac',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 270,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListView.separated(
                  itemCount: piclistview6.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Container(
                            color: Colors.white,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 110,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      piclistview6[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    textlistview6[index],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    pricelistview6[index],
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: RatingBar.builder(
                                        initialRating: 1,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 1,
                                        itemSize: 20,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      ratelistview6[index],
                                      style: TextStyle(
                                        color: Color(0xFF212529),
                                        fontSize: 12,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 120, left: 140),
                          child: index == 0
                              ? Icon(
                                  Icons.bookmark,
                                  color: Colors.orangeAccent,
                                )
                              : Icon(
                                  Icons.bookmark_border,
                                ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
