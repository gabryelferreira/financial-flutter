import 'dart:io';

import 'package:financial/components/button.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        child: Icon(Platform.isIOS
                            ? Icons.arrow_back_ios
                            : Icons.arrow_back),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'Help',
                        style: titleStyle,
                      ),
                      Icon(
                        Platform.isIOS
                            ? Icons.arrow_back_ios
                            : Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: Center(
                    child: Image.asset('images/man.png'),
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                Text(
                  'Do you need a call?',
                  style: secondTitleStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'We call you. Our support team is available Monday through Friday, from 9 am to 7 pm.',
                  style: descriptionStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonComponent(
                  child: Text(
                    'REQUEST CALL',
                    style: TextStyle(color: Colors.white),
                  ),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFFFF7200),
                      Color(0xFFC25200),
                      Color(0xFF823200)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const titleStyle = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const secondTitleStyle = TextStyle(
  color: Color(0xFFFF7200),
  fontSize: 20,
);

const descriptionStyle = TextStyle(
  color: Color(0xFF888888),
  fontSize: 16,
);
