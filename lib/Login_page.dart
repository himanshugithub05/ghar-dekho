import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghardekhoo/Home_page.dart';
import 'package:ghardekhoo/auth_controller.dart';
import 'package:ghardekhoo/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

import 'Forgot_Password.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ),
);

class FadeInUp extends StatefulWidget {
  final Widget child;
  final Duration duration;

  FadeInUp({required this.child, required this.duration});

  @override
  _FadeInUpState createState() => _FadeInUpState();
}

class _FadeInUpState extends State<FadeInUp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: SlideTransition(
        position: _offsetAnimation,
        child: widget.child,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var controller = Get.put(AuthController());

  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange.shade900,
              Colors.orange.shade600,
              Colors.orange.shade200,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                      duration: Duration(milliseconds: 1000),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    SizedBox(height: 10),
                    FadeInUp(
                      duration: Duration(milliseconds: 1300),
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 40),
                        FadeInUp(
                          duration: Duration(milliseconds: 500),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                // Email/Phone Field
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      prefixIcon: Icon(Icons.person),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey.shade200,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email or phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                // Password Field with Eye Icon
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextFormField(
                                    controller: _passwordController,
                                    obscureText: _isPasswordHidden,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      prefixIcon: Icon(Icons.lock),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey.shade200,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _isPasswordHidden
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _isPasswordHidden = !_isPasswordHidden;
                                          });
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      } else if (value.length < 8) {
                                        return 'Password must be at least 8 characters';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 35),
                        // Forgot Password Link
                        FadeInUp(
                          duration: Duration(milliseconds: 1500),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                              );
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        // Login Button
                        FadeInUp(
                          duration: Duration(milliseconds: 1600),
                          child: MaterialButton(
                            onPressed: () async{
                              if (_formKey.currentState!.validate()) {
                                // Proceed with login
                                try{
                                  await controller.loginMethod(
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                      context: context
                                  ).then((value){
                                    if(value != null){
                                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Successfully Logged in")));
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePages()));
                                    }
                                  });
                                }catch (e){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
                                }
                              }
                            },
                            height: 50,
                            color: Colors.orange[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        // Sign Up Link
                        FadeInUp(
                          duration: Duration(milliseconds: 1700),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpScreen()),
                              );
                            },
                            child: Text(
                              "Don't have an account? Sign up",
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        // Social Login Buttons (Facebook, Google, Instagram)
                        // Social Login Buttons (Facebook, Google, Instagram)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Facebook Button
                            FadeInUp(
                              duration: Duration(milliseconds: 1900),
                              child: TextButton(
                                onPressed: () {
                                  // Facebook login action
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent, // Remove background color
                                  padding: EdgeInsets.zero, // Remove padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/facebook .png',
                                    height: 40,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            // Google Button
                            FadeInUp(
                              duration: Duration(milliseconds: 1900),
                              child: TextButton(
                                onPressed: () {
                                  // Google login action
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent, // Remove background color
                                  padding: EdgeInsets.zero, // Remove padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/google .png',
                                    height: 40,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            // Instagram Button
                            FadeInUp(
                              duration: Duration(milliseconds: 1900),
                              child: TextButton(
                                onPressed: () {
                                  // Instagram login action
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent, // Remove background color
                                  padding: EdgeInsets.zero, // Remove padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/instagram .png',
                                    height: 45,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}