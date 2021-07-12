import 'package:callapp/pages/login/widgets/login_form.dart';
import 'package:callapp/pages/login/widgets/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

@override
  void initState() {
    super.initState();
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    
      }
    
    
    @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
              child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Welcome(),
                  LoginForm()
                ]
                
                )
            ),
          )

        );
      }
    }
    
    class SystemUIOverlayStyle {
}