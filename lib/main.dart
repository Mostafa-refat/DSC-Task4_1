import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'alert_code.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationApp(),
    );
  }
}

class LocationApp extends StatefulWidget {
  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.center,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 46,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    gradient: LinearGradient(colors: [
                      Colors.black,
                      Colors.black54,
                    ], begin: Alignment.topRight, end: Alignment.bottomRight),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "E-mail",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey[600],
                              )),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true, // to make the text dotted
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              )),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "Forget your password",
                              style: TextStyle(
                                color: Colors.grey[400],
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 50),
                        Container(
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {

                              showAlertDialog(context);


                              // AlertDialog(
                              //   title: Text('1'),
                              //   content: Text('2'),
                              //   actions: [
                              //     TextButton(
                              //       onPressed: (){
                              //         Navigator.of(context).pop();
                              //       },
                              //       child: Text('Yes'),
                              //     )
                              //   ],
                              // );

                              // AlertDialog(
                              //
                              //   title: Text(
                              //     'Hello',
                              //   ),
                              //   content: Text(
                              //     'Hello'
                              //   ),
                              //   actions: [
                              //     FlatButton(
                              //       child: Text('Yes'),
                              //       onPressed: (){},
                              //     ),
                              //     FlatButton(
                              //       child: Text('Yes'),
                              //       onPressed: (){},
                              //     ),
                              //   ],
                              // );
                            },
                            color: Colors.black54,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



