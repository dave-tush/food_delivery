import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/reset_password.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapShot.hasError) {
              return const Center(
                child: Text('something went wrong'),
              );
            }
            else if (snapShot.hasData) {
              return const ResetPassword();
            }
            else {
              return const FirstSign();
            }
          }),
    );
  }
}

class FirstSign extends StatefulWidget {
  const FirstSign({Key? key}) : super(key: key);

  @override
  _FirstSignState createState() => _FirstSignState();
}

class _FirstSignState extends State<FirstSign> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // if ()
    var mediaQueryOfHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: mediaQueryOfHeight * 0.02,
            horizontal: mediaQueryOfHeight * 0.02,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              SizedBox(
                height: mediaQueryOfHeight * 0.02,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: mediaQueryOfHeight * 0.03,
                  fontWeight: FontWeight.w500,
                  color: ColorsToBeUsed().primaryColor,
                ),
              ),
              SizedBox(height: mediaQueryOfHeight * 0.02),
              Column(
                children: [
                  Text(
                    'Please enter your Email so we can help \nrecover your password',
                    style: TextStyle(
                      color: ColorsToBeUsed().mainFontColor,
                      fontSize: mediaQueryOfHeight * 0.022,
                      height: mediaQueryOfHeight * 0.0014,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: mediaQueryOfHeight * 0.07,
                  ),
                  Form(
                    key: formKey,
                    child: TextFormField(
                      controller: emailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'Invalid Email address';
                        } else {
                          return null;
                        }
                      },
                      style: TextStyle(
                        fontSize: mediaQueryOfHeight * 0.02,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(mediaQueryOfHeight * 0.01),
                          ),
                          borderSide: BorderSide(
                            // width: 2.0,
                            color: ColorsToBeUsed()
                                .placeHolderColor
                                .withOpacity(0.1),
                          ),
                        ),
                        focusedBorder:
                            // InputBorder.none,
                            OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(mediaQueryOfHeight * 0.01)),
                          borderSide: BorderSide(
                              width: 2.0,
                              color: ColorsToBeUsed()
                                  .placeHolderColor
                                  .withOpacity(0.1)),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: mediaQueryOfHeight * 0.02,
                          color:
                              ColorsToBeUsed().mainFontColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: mediaQueryOfHeight * 0.04),
              Buttons(
                text: 'Continue',
                color: ColorsToBeUsed().mainFontColor,
                pressedButton: forgotPasswordButton,
                buttonColor: ColorsToBeUsed().mainColor,
              )
            ],
          ),
        ),
      ),
    );
  }

  forgotPasswordButton() async {
    // Navigator.of(context).pushNamed('/Login');
    if (formKey.currentState!.validate()) {
      await showDialog(
        context: context,
        builder: (context) =>  Center(
          child: CircularProgressIndicator(color: ColorsToBeUsed().mainColor,),
        ),
      );
      print('entered');
      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: emailController.text.trim());
      } on FirebaseAuthException catch (e) {
        return e.toString();
      } await Navigator.of(context).pushNamed('/ResetPassword');
      Navigator.pop(context);
    }

  }
}
