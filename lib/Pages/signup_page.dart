// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/login_page.dart';
import 'package:food_delivery/widgets/colors.dart';

import '../models/password_validator.dart';
import '../widgets/button.dart';
import 'HomePages/home_page.dart';

class SignUp extends StatefulWidget {
  final newPassword = LoginPage();
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: ColorsToBeUsed().mainColor,
                ),
              );
            } else if (snapShot.hasError) {
              return const Center(
                child: Text('something went wrong'),
              );
            } else if (snapShot.hasData) {
              return MyHomePage();
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
  bool _isChecked = false;
  bool _passwordVisible = true;
  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool showCircleProgressIndicator = true;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 18,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.of(context).pushNamed('/Login');
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: ColorsToBeUsed().primaryColor,
                    ),
                  ),
                ),
                Text(
                  'Create Your Account!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ColorsToBeUsed().primaryColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-z A-Z]+$").hasMatch(value)) {
                        return 'enter valid name';
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
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
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                            width: 2.0,
                            color: ColorsToBeUsed()
                                .placeHolderColor
                                .withOpacity(0.1)),
                      ),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: ColorsToBeUsed().mainFontColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailInput,
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
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        // width: 2.0,
                        color:
                            ColorsToBeUsed().placeHolderColor.withOpacity(0.1),
                      ),
                    ),
                    focusedBorder:
                        // InputBorder.none,
                        OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                          width: 2.0,
                          color: ColorsToBeUsed()
                              .placeHolderColor
                              .withOpacity(0.1)),
                    ),
                    hintText: 'Email address',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: ColorsToBeUsed().mainFontColor.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^[0-9]').hasMatch(value)) {
                      return 'Enter number';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        // width: 2.0,
                        color:
                            ColorsToBeUsed().placeHolderColor.withOpacity(0.1),
                      ),
                    ),
                    focusedBorder:
                        // InputBorder.none,
                        OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                          width: 2.0,
                          color: ColorsToBeUsed()
                              .placeHolderColor
                              .withOpacity(0.1)),
                    ),
                    hintText: 'Phone number',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: ColorsToBeUsed().mainFontColor.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-z A-Z 0-9]+$").hasMatch(value)) {
                      return 'enter valid home address';
                    } else {
                      return null;
                    }
                  },
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        // width: 2.0,
                        color:
                            ColorsToBeUsed().placeHolderColor.withOpacity(0.1),
                      ),
                    ),
                    focusedBorder:
                        // InputBorder.none,
                        OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        width: 2.0,
                        color:
                            ColorsToBeUsed().placeHolderColor.withOpacity(0.1),
                      ),
                    ),
                    hintText: 'Home Address',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: ColorsToBeUsed().mainFontColor.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
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
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        // width: 2.0,
                        color:
                            ColorsToBeUsed().placeHolderColor.withOpacity(0.1),
                      ),
                    ),
                    focusedBorder:
                        // InputBorder.none,
                        OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 2.0,
                        color:
                            ColorsToBeUsed().placeHolderColor.withOpacity(0.1),
                      ),
                    ),
                    suffixIcon: hidePassword(),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: ColorsToBeUsed().mainFontColor.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                      icon: _isChecked
                          ? const Icon(
                              Icons.check_box,
                            )
                          : const Icon(
                              Icons.check_box_outline_blank,
                            ),
                    ),
                    Expanded(
                      child: Text(
                        'By Clicking the box, you\'re agreeing to the Terms & Conditions and Privacy Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: ColorsToBeUsed().mainFontColor,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                        // overflow: TextOverflow.visible,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Material(
                  borderRadius: BorderRadius.circular(10.0),
                  color: ColorsToBeUsed().mainColor,
                  child: InkWell(
                    onTap: signUpButton,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.015,
                          bottom: MediaQuery.of(context).size.height * 0.015,
                        ),
                        child: showCircleProgressIndicator == true ? Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.022,
                            fontWeight: FontWeight.bold,
                            color: ColorsToBeUsed().mainFontColor,
                          ),
                        ) :  CircularProgressIndicator(color: ColorsToBeUsed().primaryColor,),
                      ),
                    ),
                  ),
                ),
                // Buttons(
                //   pressedButton: signUpButton,
                //   text: 'Sign Up',
                //   buttonColor: ColorsToBeUsed().mainColor,
                //   color: ColorsToBeUsed().mainFontColor,
                // ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: ColorsToBeUsed().secondaryColor,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pushNamed('/Login');
                        });
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: ColorsToBeUsed().mainFontColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signUpButton() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        CircularProgressIndicator(
          color: ColorsToBeUsed().primaryColor,
        );
      });
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailInput.text.trim(), password: passwordInput.text.trim());
      } on FirebaseAuthException catch (e) {
        return e.toString();
      }
    }
   // else if (_isChecked == false) {
     // print('click on teh tick');
      // return 'click on this sign up';
   // }
    else {
      return;
    }
    Navigator.pop(context);
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
            Icons.visibility_off,
            color: ColorsToBeUsed().placeHolderColor,
          ));
    } else {
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
    }
  }
}
