import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Container(
          height: 300,
          width: 400,
          color: Colors.black.withOpacity(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 35,
                width: 225,
                child: const Text(
                  'Enter New Username or EmailId',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 35,
                width: 225,
                child: const Text(
                  'Enter your new Password',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 35,
                width: 225,
                child: const Text(
                  'Enter your Password again',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'SignUp',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
