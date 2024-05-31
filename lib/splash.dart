import 'package:flutter/material.dart';
import 'package:klip_cart/screen1.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override void initState() {

    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen1()));});
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250,left: 100),
            child: SizedBox(
              width: 200,
              height: 180,
              child: Image.asset(
                'assets/logo.png',
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              'iDrip ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF212529),
                fontSize: 37,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
