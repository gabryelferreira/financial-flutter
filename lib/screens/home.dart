import 'package:financial/components/card.dart';
import 'package:financial/components/main_card.dart';
import 'package:financial/screens/help.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        title: Text('Finances'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.help,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => HelpPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: <Widget>[
          MainCardComponent(
              title: 'Available balance',
              description: 'Today, June 14',
              value: '302,36'),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: CardComponent(
                  icon: Icons.monetization_on,
                  text: 'BILLING',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: CardComponent(
                  icon: Icons.call_missed,
                  text: 'CASH',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: CardComponent(
                  icon: Icons.credit_card,
                  text: 'CARD',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: CardComponent(
                  icon: Icons.transfer_within_a_station,
                  text: 'TRANSACTIONS',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: CardComponent(
                  icon: Icons.storage,
                  text: 'STORAGE',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: CardComponent(
                  icon: Icons.content_paste,
                  text: 'PAYMENT',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
