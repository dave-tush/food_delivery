import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/colors.dart';

import '../models/search_bar.dart';

class SearchBars extends StatefulWidget {
  const SearchBars({Key? key}) : super(key: key);

  @override
  State<SearchBars> createState() => _SearchBarsState();
}

class _SearchBarsState extends State<SearchBars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 150,
        color: ColorsToBeUsed().mainColor,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                width: 325,
                child: TextField(
                  onChanged: null,
                  onSubmitted: null,
                  // print(nameController.text);
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    iconColor: Colors.grey,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Searching.......',
                    hintStyle: const TextStyle(letterSpacing: 1, fontSize: 14),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  // onSaved: ,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Exit',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //  Text('hello world'),
            ],
          ),
        ),
      ),
    );
  }
}
