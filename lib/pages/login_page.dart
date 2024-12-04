import 'package:flutter/material.dart';
import 'package:login_page/components/buttons.dart';
import 'package:login_page/components/square_tile.dart';
import 'package:login_page/components/text_field.dart';


class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in user
   void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    const SizedBox(height: 50),
                  //login
                  const Icon(
                    Icons.lock,
                    size:100,
                  ),
                   const SizedBox(height: 50),

                  //welcome
                  Text(
                      'Welcome to the Waste Management Tracking System!',
                       style:TextStyle(
                           color: Colors.grey[700],
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                       ),

                  ),
                   const SizedBox(height: 25),
                  //username,
                    TextFields(
                      controller: userNameController,
                      hintText: 'Username' ,
                      obscureText: false,
                    ),

                    const SizedBox(height: 10),

                    //password
                    TextFields(
                      controller: passwordController,
                      hintText: 'Password' ,
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),

                  //forgot password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              'Forgot Password ?',
                               style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                  //sign-in button
                    SignInButton(
                      onTap: signUserIn,
                    ),

                    const SizedBox(height: 50),

                  // or continue with
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 5,
                              color: Colors.grey[400],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0 ),
                            child: Text(
                                'Or continue with',
                                style: TextStyle(color: Colors.grey[700]),
                            ),
                          ),

                          Expanded(
                            child: Divider(
                              thickness: 5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),

                  //google + apple button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //google button
                        SquareTile(imagePath: 'lib/images/google.png'),

                        SizedBox(width: 10),

                        // apple button
                        SquareTile(imagePath: 'lib/images/apple.png')
                      ],
                    ) ,
                    const SizedBox(height: 50),

                  // not a member ? register now
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[

                        Text(
                          'Not a member?',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'Register now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ]

                    )


                ],
                ),
              ),
            ),
          ),
        ),
      )


    );
  }
}
