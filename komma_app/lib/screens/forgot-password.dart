import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:komma_app/dise%C3%B1o.dart';
import 'package:komma_app/widgets/background-image.dart';
import 'package:komma_app/widgets/rounded-button.dart';
import 'package:komma_app/widgets/text-field-input.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/palm.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: Text(
              'Forgot Password',
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Text(
                      'Enter your email and we will send you the instructions for how to restore your password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(buttonName: 'Send', screenName: '/'),
                ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
