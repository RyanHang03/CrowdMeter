import 'package:flutter/material.dart';
import 'crowdmeterdisplay.dart';
import 'login.dart';
import 'qrdisplay.dart';
import 'create_account.dart';
import 'navbar.dart';
import 'indisplay.dart';
import 'navbarloggedin.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

// import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const keyApplicationId = 'NVlpqECYW7AZVHW0EUfrhtolbGJ8lO1xO5enlrPW';
  const keyClientKey = 'GAA9jqPLfvofIPjeDx380hatJdxIqDlAlFKVU6gc';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey,
      debug: true);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            centerTitle: true,
            title: const Text("C L A R I T Y"),
            backgroundColor: Color.fromARGB(255,78,123,246),
          ),
          body: Center(
              child: Column(children: [
            CrowdMeterDisplay(),
            HeaderSpacer(),
            ImageHome(),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: LogInButton(),
            ),
            // Add more widgets here
          ])),
        ),
        );
  }
}

class ImageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( //imageplaceholder
                width: 403,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/ucdlogo.png'),
                    fit: BoxFit.fill,
                    ),
                  )
            );
  }
}

class HeaderSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Set the desired height of the header box
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color
      ),
    );
  }
}
class HeaderSpacer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30, // Set the desired height of the header box
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color
      ),
    );
  }
}

class HeaderBoxQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Set the desired height of the header box
      decoration: BoxDecoration(
        color: Colors.blueGrey, // Set the background color
      ),
      child: Row(
        children: [
          Container(
            width: 300,
            height: 50,
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                //alignment: Alignment.topRight,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainApp()),
                  );
                },
                child: const Text('X'),
              ),
            ),
          )
        ],
      ),
    );
  }
}


//Displays the login page
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text( "C L A R I T Y"),
          backgroundColor: Color.fromARGB(255, 78, 123, 246),
        ),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("C L A R I T Y"),
      //   backgroundColor: Color.fromARGB(255,78,123,246),
      // ),
      // drawer: Drawer(
      //     child: ListView(padding: EdgeInsets.zero, children: [
      //   ListTile(
      //     leading: Icon(Icons.home),
      //     title: const Text("Home Page"),
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => MainApp()),
      //       );
      //     },
      //   ),
      // ])),
      body: Column(children: [
        LoginState(),
        Spacer(),
        Align(
          alignment: Alignment.bottomCenter,
          child: CreateAccButton(),
        )
      ]),
    );
  }
}

class QrPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("C L A R I T Y"),
        backgroundColor: Color.fromARGB(255,78,123,246),
      ),
      body: Column(children: [
        HeaderSpacer(),
        QrCode(),
        Container(
          padding: EdgeInsets.only(top:10),
          child: Align(
          alignment: Alignment.bottomCenter,
          child: HomeButtonQR(),
        ),
        )
      ]),
    );
  }
}

class CreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
        CreateAccount(),
      ]
        )
      ),
    );
  }
}

class DisplayInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("C L A R I T Y"),
       backgroundColor: Color.fromARGB(255,78,123,246),
      ),
      body: Center(
        child: Column (
          children: [
            HeaderSpacer2(),
            WelcomeID(),
            CrowdMeterDisplay(),
            Row1(),
            Row2(),
          ],
        )
      )
    );
  }
}

class LHoursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("C L A R I T Y"),
       backgroundColor: Color.fromARGB(255,78,123,246),
      ),
      body: Center (
        child: Column (
          children: [
            LHcombine(),
          ],
        )
      )

    );
  }
}

class LHoursPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("C L A R I T Y"),
        backgroundColor: Color.fromARGB(255,78,123,246),
      ),
      body: Center (
        child: Column (
          children: [
            LHcombine(),
          ],
        )
      )

    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("C L A R I T Y"),
        backgroundColor: Color.fromARGB(255,78,123,246),
      ),
      body: Center (
        child: Column (
          children: [
            Contactbuild(),
          ],
        )
      )

    );
  }
}

class ContactPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("C L A R I T Y"),
        backgroundColor: Color.fromARGB(255,78,123,246),
      ),
      body: Center (
        child: Column (
          children: [
            Contactbuild(),
          ],
        )
      )

    );
  }
}

