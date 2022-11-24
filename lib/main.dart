import 'package:animateduiassignment/signupform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'loginform.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedLoginUI(),
    ),
  );
}

class AnimatedLoginUI extends StatefulWidget {
  @override
  State<AnimatedLoginUI> createState() => _AnimatedLoginUIState();
}

class _AnimatedLoginUIState extends State<AnimatedLoginUI> {
  late bool _formvisible;
  int? _formindex;

  @override
  void initState() {
    super.initState();
    _formvisible = false;
    _formindex = 1;
  }

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: data.height,
        width: data.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://wallpapers.com/images/hd/dream-world-mobile-58g8gv3r23zg29kw-58g8gv3r23zg29kw.jpg'),
          ),
        ),
        child: Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(0.4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: kToolbarHeight + 20),
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        'Welcome to this awesome login App \n you are awesome',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _formvisible = true;
                                  _formindex = 1;
                                });
                              },
                              child: Text('Login'),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _formvisible = true;
                                  _formindex = 2;
                                });
                              },
                              child: Text('SignUp'),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.red,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                    ),
                    label: const Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox()
                ],
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: (!_formvisible)
                  ? null
                  : Container(
                      alignment: Alignment.center,
                      color: Colors.black.withOpacity(.7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 250,
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor: _formindex == 1
                                        ? Colors.white
                                        : Colors.black),
                                onPressed: () {
                                  setState(() {
                                    _formindex = 1;
                                  });
                                },
                                icon: Icon(
                                  Icons.login,
                                  color: _formindex == 1
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                label: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: _formindex == 1
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor: _formindex == 2
                                        ? Colors.white
                                        : Colors.black),
                                onPressed: () {
                                  setState(() {
                                    _formindex = 2;
                                  });
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.personWalking,
                                  color: _formindex == 2
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                label: Text(
                                  'SignUp',
                                  style: TextStyle(
                                    color: _formindex == 2
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor: Colors.redAccent),
                                onPressed: () {
                                  setState(() {
                                    _formvisible = false;
                                  });
                                },
                                icon: const Icon(
                                  Icons.exit_to_app,
                                ),
                                label: const Text(
                                  'Exit',
                                ),
                              ),
                              
                            ],
                          ),
                          Container(
                            height: 300,
                            width: 300,
                            color: Colors.transparent,
                                child: AnimatedSwitcher(
                                  duration: Duration(milliseconds: 300),
                                  child: _formindex == 1
                                      ? LoginForm()
                                      : SignUpForm(),
                                ),
                              )
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
