import 'package:flutter/material.dart';
import 'package:klip_cart/screen1.dart';

class screen5 extends StatefulWidget {
  const screen5({super.key});

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 210),
            child: Image.asset("assets/unbox.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>screen1()), (route) => false);
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
                    'Thank you for your purchase',
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
