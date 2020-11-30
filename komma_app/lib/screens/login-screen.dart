import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:komma_app/dise%C3%B1o.dart';
import 'package:komma_app/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            child: BackgroundImage(
              image: 'assets/images/sunwave.gif',
            )),
        //PARTE QUE SE MSOTRARÁ EN LA PANTALLA DEL LOGIN
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                //Child Align se encarga del alineamiento del nombre de la App
                child: Align(
                  alignment: Alignment.lerp(
                      Alignment.center, Alignment.topCenter, 0.6),
                  child: Text(
                    'KÓMMA',
                    style: TextStyle(
                        fontFamily: 'EarthOrbiter',
                        color: Colors.amberAccent,
                        fontSize: 70),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    //Linea de código que inica que al hacer click en el texto hara lo de ForgotPassword
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                    child: Text(
                      'Forgot Password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RoundedButton(
                    buttonName: 'Login',
                    screenName: 'MenuScreen',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => {Navigator.pushNamed(context, 'CreateNewAccount')},
                child: Container(
                    child: Text(
                      'Create New Account',
                      style: kBodyText,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: kWhite),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
