import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset("assets/logo.svg", color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Text(
              "Mariana Araújo",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white.withOpacity(0.40),
          size: 25,
        ),
      ],
    );
  }
}
