import 'package:flutter/material.dart';
import 'package:klip_cart/screen5.dart';

class screen4 extends StatefulWidget {
  const screen4({super.key});

  @override
  State<screen4> createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  int select = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'checkout ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  'Shipping information',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 140),
                Text(
                  'change',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFF6AE2D),
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: 360,
                height: 160,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'jane alderson',
                            style: TextStyle(
                              color: Color(0xFF212529),
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.location_on_outlined),
                          ),
                          SizedBox(width: 20),
                          Text(
                            '221B Baker Street\nLondon , UK',
                            style: TextStyle(
                              color: Color(0xFF212529),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.phone),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '+123456789',
                            style: TextStyle(
                              color: Color(0xFF212529),
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 360,
                height: 200,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 180),
                      child: Text(
                        'Payment Method',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    RadioListTile<int>(
                      title: SizedBox(
                          width: 30,
                          height: 30,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/visa.png',
                              ),
                              SizedBox(width: 20),
                              Text(
                                '**** **** **** 1234',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          )),
                      value: 1,
                      groupValue: select,
                      onChanged: (value) {
                        setState(() {
                          select = value!;
                        });
                      },
                    ),
                    RadioListTile<int>(
                      title: SizedBox(
                          width: 30,
                          height: 30,
                          child: Row(
                            children: [
                              Image.asset('assets/card.png'),
                              SizedBox(width: 20),
                              Text(
                                '**** **** **** 1234',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          )),
                      value: 2,
                      groupValue: select,
                      onChanged: (value) {
                        setState(() {
                          select = value!;
                        });
                      },
                    ),
                    RadioListTile<int>(
                      title: SizedBox(
                        width: 30,
                        height: 30,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/bankcard.png',
                            ),
                            SizedBox(width: 20),
                            Text(
                              '**** **** **** 1234',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      value: 3,
                      groupValue: select,
                      onChanged: (value) {
                        setState(() {
                          select = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
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
                    SizedBox(width: 230),
                    Text(
                      '\$1898',
                      style: TextStyle(
                        color: Color(0xFF212529),
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                        height: 0,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: TextButton( onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen5(),),); },
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
                        'Confirm & Pay',
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
        ],
      ),
    );
  }
}
