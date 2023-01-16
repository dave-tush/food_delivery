// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/signup_page.dart';
import 'package:food_delivery/widgets/colors.dart';
import 'package:food_delivery/widgets/onboarding_widget.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // TabController controllers = Get.find();
  bool  isLastPage = false;
  final controller = PageController();
  @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var mediaQueryOfHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: mediaQueryOfHeight * 0.05,
            ),
            child: PageView(
              controller: controller,
              onPageChanged: onPageChangeToTwo,

              children: const [
                OnBoardingScreens(
                  image: AssetImage('assets/images/food-service.png'),
                  mainText: 'Order For Food',
                  subText:
                      'Place order for what you want from \nany restaurant of your choice',
                ),
                OnBoardingScreens(
                  image: AssetImage('assets/images/delivery-truck.png'),
                  mainText: 'Swift Delivery',
                  subText:
                      'Receive your order in less than 1hour \nor pick a specific delivery time.',
                ),
                OnBoardingScreens(
                    image: AssetImage('assets/images/tablet.png'),
                    mainText: 'Tracking Order',
                    subText:
                        'RealTime-tracking will keep you \nposted about order progress',)
              ],
            ),
          ),
        ),
        bottomSheet: isLastPage
            ? Container(
                color: Colors.white,
                height: mediaQueryOfHeight / 3.5,
                child: log(),
              )
            : Container(
                color: Colors.white,
                child: log(),
                height: mediaQueryOfHeight / 3.5,
              ),
      ),
    );
  }

  log() {
    final mediaQueryOfHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: mediaQueryOfHeight * 0.025,
      ),
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: WormEffect(
              activeDotColor: Theme.of(context).primaryColor,
            ),
            onDotClicked: (index) {},
          ),
          SizedBox(
            height: mediaQueryOfHeight * 0.045,
          ),
          Buttons(
            text: 'Get Started',
            color: Colors.black,
            pressedButton: ()  async {
               showDialog(
               context: context,
               builder: (context) => Center(
                 child: CircularProgressIndicator(
                   color: ColorsToBeUsed().mainColor,
                 ),
                ),
              );
              //  Navigator.of(context).pushNamed('/SignUp');
           await  Get.to(() => SignUp());
             // await Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),),);
              // Navigator.of(context).pop();
            },
            buttonColor: Theme.of(context).primaryColor,
          ),
          SizedBox(
            height: mediaQueryOfHeight * 0.025,
          ),
          isLastPage
              ? const SizedBox()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () => controller.jumpToPage(2),
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                            color: ColorsToBeUsed().mainFontColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextButton(
                      onPressed: () => controller.nextPage(
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeInOut,
                      ),
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                          color: ColorsToBeUsed().mainFontColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }

  onPageChangeToTwo(int index){
    setState((){
      isLastPage = index == 2;
    });
  }
}

