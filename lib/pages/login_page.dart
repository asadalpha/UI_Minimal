import 'package:flutter/material.dart';
import 'package:minimal_ui/pages/components/MyTexField.dart';
import 'package:minimal_ui/pages/components/my_button.dart';
import 'package:minimal_ui/pages/components/square_tile.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Icon(
                Icons.supervisor_account_rounded,
                size: 120,
              ),

              const SizedBox(height: 50),
              Text(
                "Welcome back you've been missed",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(height: 10.0,),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25.0,),
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Or Continuew with'),
                  ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                  children: const [
                SquareTile(imagePath: 'lib/images/google.png'),
                SizedBox(width: 25.0,),
                SquareTile(imagePath: 'lib/images/apple-logo.png')
              ],),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member ?"),
                  const SizedBox(width: 4.0,),
                  Text("Register Now",
                  style: TextStyle(
                      color: Colors.blueAccent,
                    fontWeight: FontWeight.bold

                    ),
                  ),
                ],
              )




















            ],
          ),
        ),
      )
    );

  }
}
