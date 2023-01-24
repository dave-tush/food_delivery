import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../widgets/containers.dart';

class ShimmerPage extends StatelessWidget {
  final baseColor = Colors.grey.withOpacity(0.9);
  final highlightColor = Colors.grey.withOpacity(0.4);
  ShimmerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              shimmerRows(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ShimmerListView(),
              ),
              SizedBox(height: 20,),
              shimmerRows(),
              SizedBox(height: 20,),
              SizedBox(height: 100, child: ShimmerListView(),),
              SizedBox(height: 20,),
              shimmerRows(),
              SizedBox(height: 20,),
              SizedBox(height: 100, child: ShimmerListView(),),
              SizedBox(height: 20,),
              shimmerRows(),
              SizedBox(height: 20,),
              SizedBox(height: 100, child: ShimmerListView(),),
              // foodMainPage(),
            ],
          ),
        ),
        baseColor: baseColor,
        highlightColor: highlightColor);
  }
}
class shimmerRows extends StatelessWidget {
  const shimmerRows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Containers(
          height: 20,
          width: 160,
        ),
        Containers(
          height: 20,
          width: 160,
        ),
      ],
    );
  }
}
class ShimmerListView extends StatelessWidget {
  const ShimmerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Containers(
          height: 120,
          width: 120,
        ),
      ),
    );
  }
}
