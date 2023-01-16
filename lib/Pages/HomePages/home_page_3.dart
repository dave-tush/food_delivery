import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage3 extends StatefulWidget {
  final user = FirebaseAuth.instance.currentUser;
  HomePage3({Key? key}) : super(key: key);

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryOfHeight = MediaQuery.of(context).size.height;
    return
       SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQueryOfHeight * 0.07,
                horizontal: MediaQueryOfHeight * 0.01),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      size: MediaQueryOfHeight * 0.15,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'David',
                            style: TextStyle(
                              fontSize: MediaQueryOfHeight * 0.02,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        TextButton(
                          onPressed: () { setState(() {
                            FirebaseAuth.instance.signOut();
                          }); },
                          child: Text(
                            'David123@gmail.com',
                            style: TextStyle(
                              fontSize: MediaQueryOfHeight * 0.015,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                gestureDetectorFunction(mainText: 'Profile'),
                gestureDetectorFunction(mainText: 'payment  Method'),
                gestureDetectorFunction(mainText: 'order History'),
                gestureDetectorFunction(mainText: 'Delivery address'),
                gestureDetectorFunction(mainText: 'Settings'),
                gestureDetectorFunction(mainText: 'About Us'),
                gestureDetectorFunction(mainText: 'Support Center'),
              ],
            ),
          ),
        ),
    );
  }

  gestureDetectorFunction({required String mainText}) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mainText,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        setState(() {
          Navigator.of(context).pushNamed('/');
        });
      },
    );
  }
}
