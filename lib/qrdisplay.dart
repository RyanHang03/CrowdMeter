import 'package:flutter/material.dart';
import 'dart:math';
import 'main.dart';
import 'package:qr_flutter/qr_flutter.dart'; //qr code lib

class MyAppState extends ChangeNotifier {
  var current = Random().nextInt(499);
  void getNext() {
    current = Random().nextInt(499);
    notifyListeners();
  }
}

// WORKS
class QrCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QrImageView(
            data: "abc", //num
            version: QrVersions.auto,
            size: 320,
            gapless: true,
          ),
        ],
      ),
    );
  }
}

class HomeButtonQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 143,
        height: 40,
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 143,
                  height: 40,
                  padding: EdgeInsets.only(right: 10), //moving it to the left and upwards
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: ElevatedButton(
                    child: const Text('Home'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DisplayInPage()),
                      );
                    },
                  )),
            ]));
  }
}

