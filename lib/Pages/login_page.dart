import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/forget_password.dart';
import 'package:food_delivery/Pages/signup_page.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../models/password_validator.dart';
import '../widgets/colors.dart';
import 'HomePages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    const color = ColorsToBeUsed;
    return Scaffold(
      body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapShot) {
              if (snapShot.connectionState == ConnectionState.waiting) {
                return  Center(
                  child: CircularProgressIndicator( color: ColorsToBeUsed().mainColor,),
                );
              } else if (snapShot.hasError) {
                return const Center(
                  child: Text('something went wrong'),
                );
              } else if (snapShot.hasData) {
                return MyHomePage();
              } else {
                return Login();
              }
            }),

    );
  }
}

class Login extends StatefulWidget {
  final navigatorKey = GlobalKey();
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
    bool _passwordVisible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //
  //   super.dispose();
  // }
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final MediaQueryOfHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQueryOfHeight * 0.12,
              horizontal: MediaQueryOfHeight * 0.025),
          child: Column(
            children: [
              Text(
                'FOODCO',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQueryOfHeight * 0.04),
              ),
              Text(
                'Eat healthy and save time',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: MediaQueryOfHeight * 0.02,
                ),
              ),
              SizedBox(
                height: MediaQueryOfHeight * 0.1,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'enter valid email';
                        }
                        return null;
                      },
                      controller: emailController,
                      style:  TextStyle(
                        fontSize: MediaQueryOfHeight * 0.02,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            ColorsToBeUsed().placeHolderColor.withOpacity(0.2),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(MediaQueryOfHeight * 0.01)),
                          borderSide: BorderSide(
                              // width: 2.0,
                              color: ColorsToBeUsed()
                                  .placeHolderColor
                                  .withOpacity(0.1)),
                        ),
                        focusedBorder:
                            // InputBorder.none,
                            OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(MediaQueryOfHeight * 0.01)),
                          borderSide: BorderSide(
                              width: 2.0,
                              color: ColorsToBeUsed()
                                  .placeHolderColor
                                  .withOpacity(0.1)),
                        ),
                        // labelText: 'Enter your name',
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: MediaQueryOfHeight * 0.02,
                          color:
                              ColorsToBeUsed().mainFontColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQueryOfHeight * 0.02,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter Password';
                        } else {
                          bool result = validatePassword(value);
                          if (result) {
                            return null;
                          } else {
                            return 'password should contain capital, small letter number & special ';
                          }
                        }
                        // return null;
                      },
                      controller: passwordController,
                      style:  TextStyle(
                        fontSize: MediaQueryOfHeight * 0.02,
                      ),
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            ColorsToBeUsed().placeHolderColor.withOpacity(0.2),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(MediaQueryOfHeight * 0.01)),
                          borderSide: BorderSide(
                              // width: 2.0,
                              color: ColorsToBeUsed()
                                  .placeHolderColor
                                  .withOpacity(0.1)),
                        ),
                        focusedBorder:
                            // InputBorder.none,
                            OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(MediaQueryOfHeight * 0.01)),
                        ),
                        // labelText: 'Enter your Password',
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          color:
                              ColorsToBeUsed().mainFontColor.withOpacity(0.5),
                        ),
                        suffixIcon: hidePassword(),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQueryOfHeight * 0.012,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Get.to(ForgotPassword());
                    // Navigator.of(context).pushNamed('/forgotPassword');
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: ColorsToBeUsed().mainFontColor.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQueryOfHeight * 0.03),
              Buttons(
                  text: 'Login',
                  color: ColorsToBeUsed().mainFontColor,
                  pressedButton: signIn,
                  buttonColor: ColorsToBeUsed().mainColor),
              SizedBox(
                height: MediaQueryOfHeight * 0.025,
              ),
              Text(
                'OR',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQueryOfHeight * 0.02),
              ),
              SizedBox(
                height: MediaQueryOfHeight * 0.025,
              ),
              Buttons(
                  text: 'Sign in with Facebook',
                  color: Colors.white.withOpacity(0.9),
                  pressedButton: SignInWithFacebook,
                  buttonColor: Colors.blue[700]),
              SizedBox(
                height: MediaQueryOfHeight * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: MediaQueryOfHeight * 0.025,
                      color: ColorsToBeUsed().mainFontColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SignUp()); 
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: MediaQueryOfHeight * 0.025,
                        color: ColorsToBeUsed().primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) =>  Center(
          child: CircularProgressIndicator(color: ColorsToBeUsed().mainColor,),
        ),
      );
      // Navigator.of(context).pushNamed('/');
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        // .then((value) { Navigator.of(context).pushNamed('/signUp');
        // print('Signed in');
        // });
      } on FirebaseAuthException catch (e) {
        return '${e.toString()}';
        // print(${error});
      }
    } else {
      return;
    }
    Navigator.pop(context);
  }
  Future SignInWithFacebook () async {
    showDialog(context: context, builder: (context) =>
    Center(
      child: CircularProgressIndicator(color: ColorsToBeUsed().mainColor,),
    )
    );
    // try {
    //   FirebaseAuth.instance.
    // }
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
            icon: Icon(Icons.visibility,color: ColorsToBeUsed().mainColor,));
      } else {
        return IconButton(
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            icon: Icon(Icons.visibility_off,color: ColorsToBeUsed().placeHolderColor,));
      }
    }
}
