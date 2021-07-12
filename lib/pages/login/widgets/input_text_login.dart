import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputTextLogin extends StatelessWidget {
  final String iconPath, placeholder;
  const InputTextLogin({Key key, @required this.iconPath, @required this.placeholder})
   : assert(iconPath != null && placeholder != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
          prefix: Container(
            width: 20,
            height: 30,
            padding: EdgeInsets.all(2),
            child: SvgPicture.asset(this.iconPath, 
              color: Colors.grey
              ),
          ), 
          placeholder: this.placeholder,
          style: TextStyle(fontFamily: 'sans'),
          placeholderStyle: TextStyle(fontFamily: 'sans',color: Colors.grey),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
              width: 1, 
              color: Colors.grey
              )
            )
          ),
        );
  }
}