import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/scroll_behaviour.dart';
import 'package:food_delivery/Pages/shimmer_page.dart';
import 'package:food_delivery/models/images_list.dart';
import 'package:food_delivery/widgets/colors.dart';
import 'package:food_delivery/widgets/navbar.dart';

import '../../widgets/food_main_page.dart';

class HomePage1 extends StatefulWidget {
  final newListOfItems = listOfItems();
  HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}
class _HomePage1State extends State<HomePage1> {
  @override
  void initState(){
    super.initState();
    loadData();
  }
  bool? isLoading;
  Future loadData() async {
    setState(() => isLoading = true);
    await Future.delayed(Duration(seconds: 1), (){});
    setState(() {
      isLoading = false;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.0,
        iconTheme: IconThemeData(color: ColorsToBeUsed().primaryColor),
        title: Text(
          'Welcome to Foodco',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w300,
            fontSize: 26,
            color: ColorsToBeUsed().mainFontColor,
          ),
        ),
        elevation: 0,
        backgroundColor: ColorsToBeUsed().mainColor,
        centerTitle: true,
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.notifications,
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        child: ScrollConfiguration(
          behavior: NoGlowBehaviour(),
          child:
          isLoading!  ? ShimmerPage() : foodMainPage(),
        ),
      ),
    );
  }
}


// Widget onTap(VoidCallback action, {bool opaque = true}) {
//   return GestureDetector(
//     behavior: opaque ? HitTestBehavior.opaque : HitTestBehavior.deferToChild,
//     onTap: action,
//     child: Card(),
//   );
// }


