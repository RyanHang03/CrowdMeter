
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:clarityapp/crowdmeterdisplay.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  void startQuery() async {
    WidgetsFlutterBinding.ensureInitialized();
    const keyApplicationId = 'NVlpqECYW7AZVHW0EUfrhtolbGJ8lO1xO5enlrPW';
    const keyClientKey = 'GAA9jqPLfvofIPjeDx380hatJdxIqDlAlFKVU6gc';
    const keyParseServerUrl = 'https://parseapi.back4app.com';

    await Parse().initialize(keyApplicationId, keyParseServerUrl,
        clientKey: keyClientKey, debug: true);
  }
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 286,
        height: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(top: 10)),
            SizedBox(
              width: 250,
              height: 22,
              child: Text(
                "User",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: controllerUsername,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                autocorrect: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Enter your username'),
              ),
            ),
            SizedBox(
              width: 250,
              height: 22,
              child: Text(
                textAlign: TextAlign.left,
                "Email",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: controllerEmail,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                autocorrect: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Enter your email'),
              ),
            ),
            SizedBox(
              width: 250,
              height: 22,
              child: Text(
                textAlign: TextAlign.left,
                "Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: controllerPassword,
                obscureText: true,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                autocorrect: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Enter your password'),
              ),
            ),
            SizedBox(
                width: 300,
                height: 40,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 143,
                          height: 40,
                          padding: EdgeInsets.only(
                              right: 10), //moving it to the left and upwards
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: ElevatedButton(
                            child: const Text('Back'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )),
                      Container(
                          width: 143,
                          height: 40,
                          padding: EdgeInsets.only(
                              left: 10), //moving it to the left and upwards
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: ElevatedButton(
                            child: const Text('Sign In'),
                            onPressed: () => {
                              doUserRegistration(),
                            },
                          )),
                    ])),
          ],
        ));
  }
  void showError() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error!"),
          content: Text("Missing parameters; Please try again."),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void nextPage() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => QrPage()));
  }
  void doUserRegistration() async {
    //Sigup code here
    final username = controllerUsername.text.trim();
    final password = controllerPassword.text.trim();
    final email = controllerEmail.text.trim();

    final user = ParseUser.createUser(username, password, email);

    try {
      var response = await user.signUp();
      if(response.success) {
        print("SUCCESSFUL SIGNUP/IN");
        CrowdMeterDisplay();
        nextPage();
      }
    } catch (e) {
      print("ERROR UNSUCCESSFUL");
      showError();
    }
  }
}

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 143,
        height: 60,
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 143,
                  height: 60,
                  padding: EdgeInsets.only(
                      bottom: 30,
                      right: 10), //moving it to the left and upwards
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: ElevatedButton(
                    child: const Text('Sign In'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QrPage()),
                      );
                    },
                  )),
            ]));
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 143,
        height: 60,
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 143,
                  height: 60,
                  padding: EdgeInsets.only(
                      bottom: 30,
                      right: 10), //moving it to the left and upwards
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: ElevatedButton(
                    child: const Text('Back'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
            ]));
  }
}

class WrapButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        height: 70,
        child: Row(
          children: [
            BackButton(),
            SubmitButton(),
          ],
        ));
  }
}
