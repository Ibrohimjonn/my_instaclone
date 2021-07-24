import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/SignUp_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key, required this.title}) : super(key: key);

  static final String id = 'sign_in';
  final String title;
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  
  _callSignUp(){
    Navigator.pushReplacementNamed(context, SignUp.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(252, 175, 69, 1),
              Color.fromRGBO(245, 96, 64, 1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontFamily: 'Billabong',
                    ),
                  ),
                  SizedBox(height: 20,),

                  // #email
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  // #password
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  // #signinbutton
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white54.withOpacity(0.2),width: 2),
                      borderRadius: BorderRadius.circular(7),
                      ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    ),
                ],
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 10,),
                  TextButton(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: _callSignUp,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
