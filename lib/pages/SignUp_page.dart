import 'package:flutter/material.dart';

import 'SignIn_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key,required this.title}) : super(key: key);

  static final String id = 'sign_up';
  final String title;
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var fullnameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var cpasswordController = TextEditingController();

  _callSignIn(){
    Navigator.pushReplacementNamed(context, SignIn.id);
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
                    // #fullname
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
                        controller: fullnameController,
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),
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

                    SizedBox(height: 15,),
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

                    SizedBox(height: 15,),
                    // #confirmpassword
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
                        controller: cpasswordController,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    // #signupbutton
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
                          "Sign Up",
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
                      "Already have an account?",
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
                      onPressed: _callSignIn,
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
