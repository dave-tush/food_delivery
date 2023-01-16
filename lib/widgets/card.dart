import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors.dart';

class Cards extends StatelessWidget {
  final navigation;
  final String? imageUrl;
  final String? foodName;
  final IconData? iconsToUse;
  final String? address;
  const Cards({
    Key? key,
     this.imageUrl,
     this.foodName,
     this.iconsToUse,
     this.address,
     this.navigation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image(
                  image: AssetImage(imageUrl!),
                  fit: BoxFit.cover,
                  height: 100,
                  width: 200,
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  foodName!,
                  style: TextStyle(
                    color: ColorsToBeUsed().primaryColor,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Icon(
                      iconsToUse,
                      color: ColorsToBeUsed().primaryColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      address!,
                      style: TextStyle(
                        color: ColorsToBeUsed().primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: navigation,
    );
  }
}
