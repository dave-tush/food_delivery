
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_delivery/Pages/HomePages/home_page_1.dart';
import 'package:food_delivery/Pages/details_page.dart';
import 'package:food_delivery/Pages/search_bars.dart';
import 'package:food_delivery/Pages/signup_page.dart';
import 'package:food_delivery/Pages/first_Screen.dart';
import 'package:food_delivery/Pages/forget_password.dart';
import 'package:food_delivery/Pages/onBoarding_screen/onBoarding_Screen.dart';
import 'package:food_delivery/Pages/reset_password.dart';
import 'package:food_delivery/Pages/specific_food.dart';
import 'package:food_delivery/widgets/theme_data.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Pages/HomePages/home_page.dart';
import 'Pages/HomePages/home_page_2.dart';
import 'Pages/HomePages/home_page_3.dart';
import 'Pages/HomePages/home_page_4.dart';
import 'Pages/check_out.dart';
import 'Pages/latest_offer.dart';
import 'Pages/login_page.dart';
import 'Pages/my_order.dart';
import 'Pages/my_order_2.dart';
import 'Pages/single_burger.dart';
import 'Pages/verification.dart';
import 'iconsss.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: GlobalKey(),
      theme: theme(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/Iconns': (context) => const Iconns(),
        '/DetailsPage' : (context) => const DetailsPage(),
        '/Login': (context) => LoginPage(),
        '/SignUp': (context) => SignUp(),
        '/onBoarding': (context) => const OnBoardingScreen(),
        '/firstScreen': (context) => const FirstScreen(),
        '/forgotPassword': (context) => const ForgotPassword(),
        '/ResetPassword': (context) => const ResetPassword(),
        '/latestOffer': (context) => const LatestOffers(),
        '/specificFood': (context) => SpecificFood(),
        '/singleBurger': (context) => SingleBurger(),
        '/myOrders': (context) => MyOrders(),
        '/MyOrderMain': (context) => const MyOrderMain(),
        '/CheckOut': (context) => CheckOut(),
        '/HomePage3': (context) => HomePage3(),
        '/VerificationCode' : (context) => const VerificationCode(),
        '/HomePage1' : (context) => HomePage1(),
        '/SearchBar' : (context) => const SearchBars(),
        '/HomePage2' : (context) => HomePage2(),
        '/HomePage4' : (context) => const HomePage4(),
      },
    );
  }
}
