import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghardekhoo/auth_controller.dart';
import 'package:ghardekhoo/main.dart';
import 'Login_page.dart';

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
      begin: Offset(0.80, 0.90),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    _opacityAnimation = Tween<double>(
      begin: 1.0,
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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  var controller = Get.put(AuthController());

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
                      duration: Duration(milliseconds: 800),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.orangeAccent, fontSize: 40),
                      ),
                    ),
                    SizedBox(height: 10),
                    FadeInUp(
                      duration: Duration(milliseconds: 600),
                      child: Text(
                        "Create a new account",
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
                  padding: EdgeInsets.all(22),
                  child: Form(
                    key: _formKey, // Add form key here
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 40),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: buildTextFormField("First Name", _firstNameController),
                        ),
                        SizedBox(height: 10),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: buildTextFormField("Last Name", _lastNameController),
                        ),
                        SizedBox(height: 10),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: buildTextFormField("Email", _emailController, emailField: true),
                        ),
                        SizedBox(height: 10),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: buildTextFormField("Phone Number", _phoneController, phoneField: true),
                        ),
                        SizedBox(height: 10),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: buildTextFormField("Password", _passwordController, obscureText: true),
                        ),
                        SizedBox(height: 10),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: buildTextFormField("Confirm Password", _confirmPasswordController, obscureText: true),
                        ),
                        SizedBox(height: 40),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: ElevatedButton(
                            onPressed: () async{
                              if (_formKey.currentState!.validate()) {
                                // If all validations pass, proceed to home
                                try{
                                  await controller.signUpMethod(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                    firstName: _firstNameController.text,
                                    lastName: _lastNameController.text,
                                    mobile: _phoneController.text,
                                    context: context,
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Succesfully Signed In")));
                                  Navigator.pop(context);
                                }catch (e){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange.shade900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                            ),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Already have an account? Login",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
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

  Widget buildTextFormField(String labelText, TextEditingController controller,
      {bool obscureText = false, bool emailField = false, bool phoneField = false}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(33),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(225, 95, 27, .3),
            blurRadius: 20,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: emailField
            ? TextInputType.emailAddress
            : (phoneField ? TextInputType.phone : TextInputType.text),
        decoration: InputDecoration(
          hintText: labelText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80.0),
            borderSide: BorderSide.none,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your $labelText";
          }
          if (emailField && !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return "Please enter a valid email";
          }
          if (phoneField && !RegExp(r'^\d{10}$').hasMatch(value)) {
            return "Please enter a valid phone number";
          }
          if (labelText == "Confirm Password" && value != _passwordController.text) {
            return "Passwords do not match";
          }
          return null;
        },
      ),
    );
  }
}
