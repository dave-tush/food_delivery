import 'package:flutter/material.dart';

import 'images_list.dart';

class LatestOfferCard extends StatelessWidget {
  final images = listOfItems();
  LatestOfferCard({Key? key,required }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MediaQuerySizeOfHeight = MediaQuery.of(context).size.height;
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.center,
                child: Image(
                  fit: BoxFit.fitWidth,
                  height: MediaQuerySizeOfHeight * 0.35,
                  width: MediaQuerySizeOfHeight * 0.5,
                  image: images.imageList[1],
                ),
              ),
              Positioned(
                top: MediaQuerySizeOfHeight * 0.3,
                left: MediaQuerySizeOfHeight * 0.25,
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(MediaQuerySizeOfHeight *0.015),
                  color: Colors.red,
                  child: GestureDetector(
                    onTap: null,
                    child:  Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuerySizeOfHeight * 0.01,
                          horizontal: MediaQuerySizeOfHeight * 0.015,
                        ),
                        child: (Text(
                          '39 restaurants',
                          style: TextStyle(
                            fontSize: MediaQuerySizeOfHeight * 0.02,
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Text(
                  'Fast Burgers',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColor,
                      size: 17.0,
                    ),
                    const Text('4.9'),
                    const SizedBox(
                      width: 7.0,
                    ),
                    const Text('Cafe:'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text('WinderFood'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text('\$50'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
