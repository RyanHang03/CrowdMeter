import 'package:flutter/material.dart';
import 'main.dart';
//import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';


class WelcomeID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 289,
    height: 40,
    child: Column (
      children: [
        Container (
          width: 289,
          height: 40,
          child: Text(
            "Welcome!", style: TextStyle(fontSize:30), textAlign: TextAlign.center,
          )
        ),
      ],
    )
);
  }
}

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 289,
        height: 157,
        child: Center (
            child: Row (
              children: [
            Padding(padding: EdgeInsets.only(top:10,bottom:20)),
            Code(),
            Calendar(),
            Reservation()
          ],
          )
          )
    );
  }
}

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 289,
        height: 157,
        child: Center (
            child: Row (
              children: [
            Padding(padding: EdgeInsets.only(top:10, bottom:20)),
            Training(),
            Explore(),
            Policies(),
          ],
          )
          )
    );
  }
}



class Code extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
    width: 99,
    height: 137,
    padding: EdgeInsets.only(left:20,right:10),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container( //imageplaceholder
                width: 89,
                height: 75,
                padding: EdgeInsets.only(bottom:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/qrcode.jpg'),
                    fit: BoxFit.fill,
                    ),
                  )
            ),
            SizedBox(
                width: 89,
                height: 35,
                child: Text(
                    "QR Code",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                    ),
                ),
            ),
        ],
    ),
    ), onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QrPage()),
                  );
                },
    );
  }
}

class Calendar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
    width: 89,
    height: 137,
    padding: EdgeInsets.only(left:10,right:10),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container( //imageplaceholder
                width: 89,
                height: 75,
                padding: EdgeInsets.only(bottom:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/calendar.jpg'),
                    fit: BoxFit.fill,
                    ),
                  )
            ),
            SizedBox(
                width: 89,
                height: 35,
                child: Text(
                    "Calendar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                    ),
                ),
            ),
        ],
    ),
    ), onTap: () {
      //reroute or open URL idk
                },
    );
  }
}

class Reservation extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
    width: 89,
    height: 137,
    padding: EdgeInsets.only(left:10,right:10),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container( //imageplaceholder
                width: 89,
                height: 75,
                padding: EdgeInsets.only(bottom:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/booking.jpg'),
                    fit: BoxFit.fill,
                    ),
                  )
            ),
            SizedBox(
                width: 89,
                height: 35,
                child: Text(
                    "Bookings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                    ),
                ),
            ),
        ],
    ),
    ), onTap: () {
      //reroute or open URL idk
                },
    );
  }
}

class Training extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
    width: 99,
    height: 137,
    padding: EdgeInsets.only(left:20,right:10),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container( //imageplaceholder
                width: 89,
                height: 75,
                padding: EdgeInsets.only(bottom:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/training.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
            ),
            SizedBox(
                width: 89,
                height: 35,
                child: Text(
                    "Training",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                    ),
                ),
            ),
        ],
    ),
    ), onTap: () {
      //reroute or open URL idk
                },
    );
  }
}

class Explore extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
    width: 89,
    height: 137,
    padding: EdgeInsets.only(left:10,right:10),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container( //imageplaceholder
                width: 89,
                height: 75,
                padding: EdgeInsets.only(bottom:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/travel.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
            ),
            SizedBox(
                width: 89,
                height: 35,
                child: Text(
                    "Explore",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                    ),
                ),
            ),
        ],
    ),
    ), onTap: () {
      //reroute or open URL idk
                },
    );
  }
}

class Policies extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
    width: 89,
    height: 137,
    padding: EdgeInsets.only(left:10,right:10),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container( //imageplaceholder
                width: 89,
                height: 75,
                padding: EdgeInsets.only(bottom:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/policies.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
            ),
            SizedBox(
                width: 89,
                height: 35,
                child: Text(
                    "Policies",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                    ),
                ),
            ),
        ],
    ),
    ), onTap: () {
      //reroute or open URL idk
                },
    );
  }
}

// class Testingclick extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: Container(
//         width: 84,
//         height: 117,
//         decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Color(0xffd9d9d9),
//                 ),
//       ),
//       onPressed: _launchURLApp,

//     );
//   }
// }

// _launchURLApp() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunch(url)) {
//     await launch(url, forceSafariVC: true, forceWebView: true);
//   } else {
//     throw 'Could not launch $url';
//   }
// }