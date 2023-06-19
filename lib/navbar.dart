import 'package:flutter/material.dart';
import 'main.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
         padding: EdgeInsets.only(top:50),
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: const Text("Home Page"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder : (context) => const MainApp())),
          ),
          ListTile(
            leading: Icon(Icons.schedule),
            title: const Text("Hours of Operation"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder : (context) => LHoursPage())),
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: const Text("Contact Us"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder : (context) => ContactPage())),
          ),
        ],
      ),
    );
  }
}

class LHcombine extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      width:400,
      height:600,
      padding: EdgeInsets.only(top:100),
      child: Column(
        children: [
          RegHours(),
          Location(),
        ],
      )
    );
  }
}

class RegHours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 320,
    height: 250,
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 320,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffd9d9d9),
                ),
                padding: const EdgeInsets.only(left: 57, right: 63, bottom: 46, ),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        SizedBox(
                            width: 230,
                            height: 50,
                            child: Text(
                                "Regular Hours Of Operation",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                ),
                            ),
                        ),
                        SizedBox(height: 10,
                            width: 270),

                            Text(
                                "Monday-Friday 5am-12am\nSaturday 9am-9pm\nSunday 9am-11pm",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                ),
                            ),
                    ],
                ),
                ),
            
        ],
    ),
);
  }
}

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 320,
    height: 200,
    padding: EdgeInsets.only(top:40),
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffd9d9d9),
                ),
                padding: const EdgeInsets.only(left: 37, right: 34, top: 12, bottom: 38, ),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        SizedBox(
                            width: 195,
                            height: 29,
                            child: Text(
                                "Location",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                ),
                            ),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "760 Orchard Rd, Davis, CA 95616\nActivities and Recreation Center | UC Davis, Address",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                            ),
                        ),
                    ],
                ),
            ),
        ],
    ),
);
  }
}

class Contactbuild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 322,
    height: 375,
    padding: EdgeInsets.only(top:150),
    child: Stack(
        children:[Positioned.fill(
            child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                    width: 320,
                    height: 375,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffd9d9d9),
                    ),
                    padding: const EdgeInsets.only(left: 62, right: 63, top: 30, bottom: 131, ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                            SizedBox(
                                width: 195,
                                height: 30,
                                child: Text(
                                    "Contact Information",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        ),
        Positioned(
            left: 0,
            top: 65,
            child: SizedBox(
                width: 320,
                child: Text(
                    "Email\nMember Services\nmemberservices@campusrec.ucdavis.edu\nFront Desk Phone\n530-754-5306\nEquipment Room Phone\n530-754-2167\nFax\n530-754-8444",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                    ),
                ),
            ),
        ),],
    ),
);
  }
}