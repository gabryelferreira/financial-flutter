import 'package:flutter/material.dart';

class MainCardComponent extends StatelessWidget {
  final String title, description, value;

  MainCardComponent({@required this.title, this.description, this.value});

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
        ]
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: titleStyle,
              ),
              Text(
                description,
                style: descriptionStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    'R\$',
                    style: moneyStyle,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    value,
                    style: valueStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const titleStyle = TextStyle(
  color: Color(0xFFF79C60),
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

const descriptionStyle = TextStyle(
  color: Color(0xFF777777),
  fontSize: 14,
);

const valueStyle = TextStyle(
  color: Color(0xFF222222),
  fontSize: 48,
);

const moneyStyle = TextStyle(
  fontSize: 16,
);
