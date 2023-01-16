import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/scroll_behaviour.dart';
import 'package:food_delivery/models/latest_offers_card.dart';

class LatestOffers extends StatefulWidget {
  const LatestOffers({Key? key}) : super(key: key);

  @override
  State<LatestOffers> createState() => _LatestOffersState();
}

class _LatestOffersState extends State<LatestOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ScrollConfiguration(
        behavior: NoGlowBehaviour(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).size.height) * 0.25,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.025,
                      vertical: MediaQuery.of(context).size.height * 0.015,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                             Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Latest Offer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.height * 0.04,
                                ),
                              ),
                            ),
                            Container(
                              // color: Colors.purple,
                              padding: const EdgeInsets.only(right: 70.0),
                              child:  Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text(
                                  'Find discount, offers, \nspecial offers and many more!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height * 0.023,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.height * 0.23),
                              child: Material(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                                child: GestureDetector(
                                  onTap: null,
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.height *
                                            0.013,
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                0.013,
                                      ),
                                      child:  Text(
                                        '39 restaurants',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.height * 0.021,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.015,
                      vertical: MediaQuery.of(context).size.height * 0.01,
                    ),
                    child: Column(
                      children: [
                        LatestOfferCard(),
                        LatestOfferCard(),
                        LatestOfferCard(),
                        LatestOfferCard(),
                        LatestOfferCard(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
