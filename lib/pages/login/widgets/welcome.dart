import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/responsive.dart';


class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      final Responsive responsive = Responsive.of(context);

    return AspectRatio(
      aspectRatio: 10/10,
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Container(
                color: Colors.white10,
                child: Stack(
                  children: <Widget>[
                   Positioned(
                     top: constraints.maxHeight*0.5,
                     child: Column(
                       children:<Widget> [
                         Container(
                     height: 3,
                     width: constraints.maxWidth,
                     color: Colors.grey,
                      ),
                      SizedBox(
                        height:20,
                      ),
                      Text(
                        "Bienvenido",
                        style: TextStyle(
                          fontSize: responsive.ip(2.5),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'raleway'
                        ),
                        )
                      ],
                      ),
                    ),
                    Positioned (
                      left: 15,
                      right: 15,
                    top: constraints.maxHeight*0.20,
                      child: SvgPicture.asset(
                        'assets/pages/login/medical.svg',
                         width:constraints.maxWidth*0.4,
                        ),
                       ),
                  ],
                  ),

              );
            },
          ),
    );
  }
}