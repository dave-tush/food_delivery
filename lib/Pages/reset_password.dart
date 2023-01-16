import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/colors.dart';

import '../models/password_validator.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
            } else if (snapShot.hasData) {
              return const ResetPassword();
            } else {
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
  bool _passwordVisible1 = true;
  final passwordInput1 = TextEditingController();
  final passwordInput = TextEditingController();
  bool _passwordVisible = true;
  final emailController = TextEditingController();
  GlobalKey<FormState> formsKey = GlobalKey<FormState>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
                    Navigator.of(context).pushNamed('/Login');
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: ColorsToBeUsed().primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: mediaQueryOfHeight * 0.02,
              ),
              Text(
                'Reset Password',
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
                    'Enter your new password and confirm.',
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
                    key: formsKey,
                    child: Column(
                      children: [
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter password';
                            } else {
                              bool newPassword = validatePassword(value);
                              if (newPassword) {
                                return null;
                              } else {
                                return 'password should contain capital, small letter number & special ';
                              }
                            }
                          },
                          controller: passwordInput,
                          style: TextStyle(
                            fontSize: mediaQueryOfHeight * 0.02,
                          ),
                          obscureText: _passwordVisible,
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
                            suffixIcon: IconButton(
                              icon: _passwordVisible
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: ColorsToBeUsed().placeHolderColor,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: ColorsToBeUsed().mainColor,
                                    ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: mediaQueryOfHeight * 0.02,
                              color: ColorsToBeUsed()
                                  .mainFontColor
                                  .withOpacity(0.5),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mediaQueryOfHeight * 0.03,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter password';
                            } else if (value != passwordInput.text) {
                              return 'Password not match';
                            } else {
                              bool newPassword = validatePassword(value);
                              if (newPassword) {
                                return null;
                              } else {
                                return 'password should contain capital, small letter number & special ';
                              }
                            }
                          },
                          controller: passwordInput1,
                          style: TextStyle(
                            fontSize: mediaQueryOfHeight * 0.02,
                          ),
                          obscureText: _passwordVisible1,
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
                            suffixIcon: IconButton(
                              icon: _passwordVisible1
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: ColorsToBeUsed().placeHolderColor,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: ColorsToBeUsed().mainColor,
                                    ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible1 = !_passwordVisible1;
                                });
                              },
                            ),
                            hintText: ' Confirm Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: mediaQueryOfHeight * 0.02,
                              color: ColorsToBeUsed()
                                  .mainFontColor
                                  .withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediaQueryOfHeight * 0.04),
              Buttons(
                text: 'Reset Password',
                color: ColorsToBeUsed().mainFontColor,
                pressedButton: resetPasswordButton,
                //     (){
                //   if (formsKey.currentState?.validate() ?? true) {
                //     print('validated');
                //   } else {
                //     return;
                //   }
                // },
                buttonColor: ColorsToBeUsed().mainColor,
              )
            ],
          ),
        ),
      ),
    );
  }

  createDialog() {
    return showDialog(
        barrierColor: ColorsToBeUsed().placeHolderColor.withOpacity(0.8),
        context: context,
        builder: (context) {
          return Dialog(
            elevation: 0,
            child: Stack(
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.cancel,
                    color: Colors.red,
                  ),
                  onTap: () {},
                ),
                // SizedBox(height: 00,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Successfully',
                          style: TextStyle(
                            color: ColorsToBeUsed().mainColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Reset Password',
                          style: TextStyle(
                            color: ColorsToBeUsed().primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  resetPasswordButton() async {
    // Navigator.of(context).pushNamed('/Login');
    if (formsKey.currentState?.validate() ?? true) {
      await showDialog(
        context: context,
        builder: (context) => Center(
          child: CircularProgressIndicator(
            color: ColorsToBeUsed().mainColor,
          ),
        ),
      );

      try {
        FirebaseAuth.instance
            .sendPasswordResetEmail(email: emailController.text.trim());
        return createDialog();
      } on FirebaseAuthException catch (e) {
        return e.toString();
      }
      // Navigator.pop(context);
    } else {
      return;
    }
  }

  hidePassword() {
    // return IconButton(onPressed: (){}, icon: const Icon(Icons.visibility));
    if (_passwordVisible) {
      return IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            Icons.visibility,
            color: ColorsToBeUsed().mainColor,
          ));
    } else {
      return IconButton(
        onPressed: () {
          setState(() {
            _passwordVisible = !_passwordVisible;
          });
        },
        icon: Icon(
          Icons.visibility_off,
          color: ColorsToBeUsed().placeHolderColor,
        ),
      );
    }
  }
}
