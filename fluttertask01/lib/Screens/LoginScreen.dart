import 'package:flutter/material.dart';
import 'package:fluttertask01/Screens/HomeScreen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  String username, password;

  String validateUname(String uname) {
    if (uname.isEmpty) {
      return "User Name is Empty.";
    } else if (uname.length <= 2) {
      return "Username is too short.";
    } else if (uname.length > 12) {
      return "Username is too long.";
    } else {
      return null;
    }
  }

  String validatePwd(String pwd) {
    if ((pwd.isEmpty)) {
      return "Password is Empty.";
    } else if (pwd.length <= 2) {
      return "Password is too short.";
    } else if (pwd.length > 12) {
      return "Password is too long.";
    } else {
      return null;
    }
  }

  getInput() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();

      if ((username == "admin") && (password == "123")) {
        print("username - " + username + "  Password -" + password);
        //  Navigator.push(context,MaterialPageRoute(builder: (context) => Home()));
        Navigator.pushReplacementNamed(context, "/Home");
      } else {
        print('wong password');
        print(username);
        print(password);
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                elevation: 16,
                child: Container(
                  height: 100.0,
                  width: 60.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('Enter Correct User name and Password\n Admin\n 123',textAlign: TextAlign.center,),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Well Come',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 30.0, left: 30.0, bottom: 20.0),
                child: TextFormField(
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'Username here',
                  ),
                  validator: (input) => validateUname(input),
                  onSaved: (input) => username = input,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 30.0, left: 30.0, bottom: 20.0),
                child: TextFormField(
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'Password here',
                  ),
                  obscureText: true,
                  validator: (input) => validatePwd(input),
                  onSaved: (input) => password = input,
                ),
              ),
              ButtonTheme(
                height: 50.0,
                minWidth: 180.0,
                child: RaisedButton(
                  onPressed: () => getInput(),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
