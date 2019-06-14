import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final IconData icon;
  final String text;

  CardComponent({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFFCCCCCC),
              offset: Offset(2, 2),
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              size: 44,
              color: Color(0xFFF79C60),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
