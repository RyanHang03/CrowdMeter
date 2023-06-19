import 'package:flutter/material.dart';
import 'crowdmetersystem.dart';

class MeterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 3.5),
        width: 60,
        height: 64,
        decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/meter.jpg'),
                    fit: BoxFit.fill,
                    ),
  ));
  }
}

//CODE FOR DISPLAYING CROWD METER

class CrowdMeterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303,
      height: 172,
      padding: EdgeInsets.only(top: 25), 
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Crowd Meter",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Container(
                width: 303,
                height: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  color: Color(0x00d9d9d9),
                ),
                padding: const EdgeInsets.only(
                  left: 33,
                  right: 34,
                ),
                child: Row(
                  children: [
                    MeterImage(),
                    CrowdMeterSystem(),
                  ],
                )),
          ]),
    );
  }
}
