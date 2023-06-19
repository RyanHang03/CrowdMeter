import 'package:flutter/material.dart';
import 'main.dart';

class NavBar2 extends StatelessWidget {
  const NavBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
         padding: EdgeInsets.only(top:50),
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: const Text("Home Page"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder : (context) => /*const*/ DisplayInPage())),
          ),
          ListTile(
            leading: Icon(Icons.report_problem),
            title: const Text("Report Damage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.schedule),
            title: const Text("Hours of Operation"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder : (context) => LHoursPage2())),
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: const Text("Contact Us"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder : (context) => ContactPage2())),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MainApp())),
          ),
        ],
      ),
    );
  }
}