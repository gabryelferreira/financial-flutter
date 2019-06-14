import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonComponent extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const ButtonComponent(
      {@required this.child,
      this.gradient,
      this.width = double.infinity,
      this.height = 45,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[500],
            offset: Offset(0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
