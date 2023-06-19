import 'package:flutter/material.dart';
//import 'main.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

//PERCENT BAR
class CrowdMeterSystem extends StatefulWidget {
  @override
  State<CrowdMeterSystem> createState() => _CrowdMeterSystemState();
}

// void updateNum() async {
//   final ParseCloudFunction function = ParseCloudFunction('countLiveQueryInputs');
//   final ParseResponse parseResponse = await function.execute();
//   if (parseResponse.success && parseResponse.result != null) {
//     print(parseResponse.result);
//   }
// }
class _CrowdMeterSystemState extends State<CrowdMeterSystem> {

  int numPeople = 0;
  void updateNum() async {
    const keyApplicationId = 'NVlpqECYW7AZVHW0EUfrhtolbGJ8lO1xO5enlrPW';
    const keyClientKey = 'GAA9jqPLfvofIPjeDx380hatJdxIqDlAlFKVU6gc';
    const keyParseServerUrl = 'https://parseapi.back4app.com';

    await Parse().initialize(keyApplicationId, keyParseServerUrl,
        clientKey: keyClientKey, debug: true);
    final ParseCloudFunction func = ParseCloudFunction('countLiveQueryInputs');
    final ParseResponse funcResponse = await func.execute();
    if (funcResponse.success && funcResponse.result != null) {
      setState(() {
        numPeople = funcResponse.result * 100;
      });
      print(numPeople);
    }
  }

  // NEED TO FIGURE OUT FIREBASE TO DETERMINE NUMPEOPLE;
  int percentage = 0;
  bool ten = false;
  bool twenty = false;
  bool thirty = false;
  bool forty = false;
  bool fifty = false;
  bool sixty = false;
  bool seventy = false;
  bool eighty = false;
  bool ninety = false;
  bool full = false;

  @override
  Widget build(BuildContext context) {
    updateNum();
    percentage = ((numPeople / 500) * 100).round();
    if (percentage > 0) {
      ten = true;
    }
    if (percentage > 10) {
      twenty = true;
    }
    if (percentage > 20) {
      thirty = true;
    }
    if (percentage > 30) {
      forty = true;
    }
    if (percentage > 40) {
      fifty = true;
    }
    if (percentage > 50) {
      sixty = true;
    }
    if (percentage > 60) {
      seventy = true;
    }
    if (percentage > 70) {
      eighty = true;
    }
    if (percentage > 80) {
      ninety = true;
    }
    if (percentage > 90) {
      full = true; // gyatt
    }
    return Container(
        child: Row(
      // children: <Widget>[
      //   Text('$numPeople'),
      //   //onPressed: () => updateNum(),
      // ],

      children: [
        PercentBar(isFull: ten),
        PercentBar(isFull: twenty),
        PercentBar(isFull: thirty),
        PercentBar(isFull: forty),
        PercentBar(isFull: fifty),
        PercentBar(isFull: sixty),
        PercentBar(isFull: seventy),
        PercentBar(isFull: eighty),
        PercentBar(isFull: ninety),
        PercentBar(isFull: full),
      ],
    ));
  }
}

class PercentBar extends StatelessWidget {
  final bool isFull;
  final displayColor = Color.fromARGB(255, 255, 255, 255);
  PercentBar({required this.isFull});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(3.5),
        width: 10,
        height: 64,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            color: isFull
                ? Color.fromARGB(255, 45, 17, 123)
                : Color.fromARGB(255, 216, 214, 236)));
  }
}

////////////////////////////////////////////////////////////////////////////////
