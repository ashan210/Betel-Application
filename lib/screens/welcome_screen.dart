import 'package:flutter/material.dart';
import 'package:my_first_app/screens/grower_screen.dart';

import 'package:my_first_app/screens/home_screen.dart';


import 'package:my_first_app/screens/signin_screen.dart';
import 'package:my_first_app/screens/signup_screen.dart';
import 'package:my_first_app/theme/theme.dart';
import 'package:my_first_app/widgets/custom_scaffold.dart';
import 'package:my_first_app/widgets/welcome_button.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Welcome Back!\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                        //TextSpan(
                            //text:
                                //'\nEnter personal details to your employee account',
                            //style: TextStyle(
                              //fontSize: 20,
                              // height: 0,
                           // ))
                      ],
                    ),
                  ),
                ),
              )),


//additonal button ready to delete
                     Expanded(
                    child: WelcomeButton(
                      buttonText: 'seller',
                      onTap: const HomeScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary, onPressed: () {},
                    ),
                  ),
                  //delete
                   Expanded(
                    child: WelcomeButton(
                      buttonText: 'grower',
                      onTap: const GrowerScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary, onPressed: () {  },
                    ),
                  ),
                  //delete

          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                   Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: const SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white, onPressed: () {  },
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: const SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary, onPressed: () {  },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}