import 'package:flutter/material.dart';
import 'package:food_delivery/controller/tap_controller.dart';
import 'package:food_delivery/widgets/colors.dart';
import 'package:food_delivery/widgets/rating_star.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class HomePage2 extends StatefulWidget {
  List<bool> star = List.filled(10, true);
   HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List<bool> isbookmark = List.filled(10, true);
    TabController tabController = TabController(length: 6, vsync: this);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Container(
              // height: 250,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 13.5, right: 13.5, top: 60),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore',
                          style: TextStyle(
                              color: ColorsToBeUsed().primaryColor,
                              fontFamily: 'poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.7),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '73c somefun building........',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TabBar(
                      labelStyle: const TextStyle(fontSize: 18),
                      controller: tabController,
                      labelColor: ColorsToBeUsed().primaryColor,
                      unselectedLabelColor: Colors.grey[600],
                      isScrollable: true,
                      indicatorColor: ColorsToBeUsed().mainColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 5,
                      tabs: const [
                        Text(
                          'All',
                        ),
                        Text('Drinks'),
                        Text(
                          'FastFood',
                        ),
                        Text(
                          'Cakes',
                        ),
                        Text(
                          'Cakes',
                        ),
                        Text('Cakes'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(controller: tabController, children: [
                FoodCard(),
                FoodCard(),
                FoodCard(),
                FoodCard(),
                FoodCard(),
                FoodCard(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
extension WidgetExtension on Widget {
  Widget onTap(VoidCallback action, {bool opaque = true}) {
    return GestureDetector(
      behavior: opaque ? HitTestBehavior.opaque : HitTestBehavior.deferToChild,
      onTap: action,
      child: this,
    );
  }
}
class FoodCard extends StatelessWidget {
 tapController controller = Get.put(tapController());
// final List<bool> star = List.filled(10, true);
   FoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
                left: 5.5, right: 5.5, bottom: 15.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const ClipRRect(
                      child: Image(
                        height: 100,
                        image: AssetImage(
                            'assets/images/food/pasta.jpg'),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      )),

                  const SizedBox(
                    width: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Kichi Chops & Drinks',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorsToBeUsed()
                                      .primaryColor),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: controller.star[index]
                                  ? const Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                                size: 24,
                              )
                                  : Icon(
                                Icons.bookmark,
                                color: Theme.of(
                                    context)
                                    .primaryColor,
                                size: 24,
                              ),
                              onTap: () => controller.isFavourite(index),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            Text(
                              '23a, Excel Road, ogba',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children:  const [
                            RatingStar(rating: 3),
                            SizedBox(
                              width: 20,
                            ),
                            Text('20 mins - 0.9km'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

