import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset('lib/images/bird.png'),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                            style:
                            TextStyle(color: Colors.deepPurple, fontSize: 20)),
                        Text(" SIGN UP",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                          padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.lightBlue[50],
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.accessibility_new,
                                      color: Colors.lightBlue,
                                    ),
                                  ),
                                  Text(
                                    "E M A I L",
                                    style: TextStyle(
                                        color: Colors.lightBlue, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                    Expanded(
                      child: Padding(
                          padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.lightBlue[50],
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.lock,
                                      color: Colors.lightBlue,
                                    ),
                                  ),
                                  Text(
                                    "P A S S W O R D",
                                    style: TextStyle(
                                        color: Colors.lightBlue, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Forgot Password?",
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 20)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, top: 20, bottom: 20),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.lightBlue,
                              child: const Center(
                                child: Text(
                                  "S I G N  I N",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, right: 5),
                                child: SignInButton(
                                  Buttons.AppleDark,
                                  text: "Sign in",
                                  onPressed: () {},
                                ),
                              )),
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5, right: 5),
                                child: SignInButton(
                                  Buttons.Google,
                                  text: "Sign in",
                                  onPressed: () {},
                                ),
                              )),
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5, right: 10),
                                child: SignInButton(
                                  Buttons.FacebookNew,
                                  text: "Sign in",
                                  onPressed: () {},
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
