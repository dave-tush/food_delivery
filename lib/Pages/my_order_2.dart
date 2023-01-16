import 'package:flutter/material.dart';

class MyOrderMain extends StatefulWidget {
  const MyOrderMain({Key? key}) : super(key: key);

  @override
  State<MyOrderMain> createState() => _MyOrderMainState();
}

class _MyOrderMainState extends State<MyOrderMain> {
  @override
  Widget build(BuildContext context) {
    var ThemeColor = Theme.of(context).primaryColor;
    var ThemeColorDark = Theme.of(context).primaryColorDark;
    var MediaQuerySizeOfWidth = MediaQuery.of(context).size.width;
    var MediaQuerySizeOfHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: MediaQuerySizeOfHeight * 0.08,
                color: Colors.white,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios_new_sharp),
                    ),
                    SizedBox(
                      width: MediaQuerySizeOfHeight * 0.11,
                    ),
                    Text(
                      'My Order',
                      style: TextStyle(fontSize: MediaQuerySizeOfHeight * 0.027),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuerySizeOfHeight * 0.5,
              ),
              Text(
                'Your basket is empty',
                style: TextStyle(
                    color: ThemeColor,
                    fontSize: MediaQuerySizeOfHeight * 0.025),
              ),
              SizedBox(
                height: MediaQuerySizeOfHeight * 0.03,
              ),
              Text(
                'Make your basket happy and \n add food to it',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: MediaQuerySizeOfHeight * 0.02),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
