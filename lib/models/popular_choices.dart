import 'package:flutter/material.dart';
class PopularChoices extends StatelessWidget {
  const PopularChoices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Choices',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.02,
              color: Theme.of(context).primaryColorDark),
        ),
        GestureDetector(
          child: Text(
            'Show all',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.02,
              color: Colors.grey[600],
            ),
          ),
          onTap: (){},
        ),
      ],
    );
  }
}
