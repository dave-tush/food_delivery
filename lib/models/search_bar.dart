import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  SearchBar({Key? key, required this.hintText}) : super(key: key);

  IconButtons() {
    return Icon(
      Icons.search,
      size: 24,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: null,
              onSubmitted: null,
              // print(nameController.text);
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                iconColor: Colors.grey,
                prefixIcon: IconButtons(),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: hintText,
                hintStyle: const TextStyle(letterSpacing: 1, fontSize: 14),
                filled: true,
                fillColor: Colors.white,
              ),
              // onSaved: ,
            ),
          ],
        ),
      ],
    );
  }
}
