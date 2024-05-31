import 'package:flutter/material.dart';
import 'package:klip_cart/screen4.dart';

class screen3 extends StatefulWidget {
  final String image;
  final String txt;
  final String cash;

  const screen3(
      {super.key, required this.image, required this.txt, required this.cash});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 110),
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
        actions: [
          Icon(
            Icons.search,
            size: 40,
          ),
        ],
        leading: Icon(Icons.format_align_left_sharp),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Container(
              width: 340,
              height: 40,
              decoration: ShapeDecoration(
                color: Color(0xB2F6AE2D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Delivery for FREE until the end of the month',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 320,
            child: Padding(
              padding: const EdgeInsets.only(top: 38),
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Container(
                          width: 360,
                          height: 120,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 150,height: 150,child: Image.asset(widget.image)),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Text(widget.txt),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 70),
                                    child: Text(widget.cash),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Quantity',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Icon(
                                          Icons.indeterminate_check_box_sharp,
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Icon(
                                          Icons.add_box_sharp,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 330, top: 2),
                          child: Icon(Icons.close),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 20,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Row(
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontSize: 36,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 150),
                Text(
                  '\$1898',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontSize: 36,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => screen4(),
                  ),
                );
              },
              child: Container(
                width: 350,
                height: 80,
                decoration: ShapeDecoration(
                  color: Color(0xB2F6AE2D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'checkout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF4FAFF),
                      fontSize: 24,
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
