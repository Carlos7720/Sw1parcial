import 'package:callapp/pages/login/widgets/input_text_login.dart';
import 'package:callapp/widgets/circule_button.dart';
import 'package:callapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Container(
        width: 330,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InputTextLogin(
            iconPath: 'assets/pages/login/icons/mail.svg', 
            placeholder: 'Email'
            ),
            InputTextLogin(
            iconPath: 'assets/pages/login/icons/secure.svg', 
            placeholder: 'Password'
            ),
             SizedBox(
              height: 10,
             ),
           Container(
             width: double.infinity,
             alignment: Alignment.centerRight,
             child:  CupertinoButton(
              padding: EdgeInsets.symmetric(vertical:15),
              child: Text('Olvido su Contraseña?', 
              style: TextStyle(
                fontFamily: 'sans', color: Colors.blue,
                ),
                ),
              onPressed: null),
             ),
             SizedBox(
              height: 15,
              ),
              RoundedButton(
                label: "Ingresar",
                onPressed: (){}, backgroundColor: null, 
              ),
              SizedBox(
               height: 30,
              ),
              Text("Continuar con..."),
              SizedBox(
               height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                CircleButton(
                  size: 55,
                  backgroundColor: Color(0xff44baff),
                   iconPath: 'assets/pages/login/icons/facebook.svg',
                ),
                SizedBox(
                  width: 20,
                ),
                CircleButton(
                  size: 55,
                  backgroundColor: Color(0xffff1744), 
                  iconPath: 'assets/pages/login/icons/google.svg',
                ),
                ],
              ),
               SizedBox(
                  height: 30,
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("No tienes una Cuenta aun?..."),
              CupertinoButton(
                child: Text(
                  "Sing up", 
                  style: TextStyle(
                    fontFamily: 'sans',
                    fontWeight: FontWeight.w600
                    ),
                    ), 
                onPressed: (){},
              )

            ],

          ),
        ],
        ),
      ),
    );
  }
}