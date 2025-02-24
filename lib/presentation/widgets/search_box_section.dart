import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBoxSection extends StatelessWidget {
  const SearchBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 50,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.transparent,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    height: 20,
                    width: 20,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(
          "assets/icons/filter.svg",
          height: 30,
          width: 30,
          color: Colors.white,
        ),
      ],
    );
  }
}
