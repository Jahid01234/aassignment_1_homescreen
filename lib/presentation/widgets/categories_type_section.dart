import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesTypeSection extends StatefulWidget {
  const CategoriesTypeSection({super.key});

  @override
  State<CategoriesTypeSection> createState() => _CategoriesTypeSectionState();
}

class _CategoriesTypeSectionState extends State<CategoriesTypeSection> {

  int _selectedIndex = 0;
  final List<String> _categoriesTypes = [
    "All",
    "Action",
    "Anime",
    "Sci-fi",
    "Thriller",
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView.separated(
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemCount: _categoriesTypes.length,
        separatorBuilder: (_,__){
          return const SizedBox(width: 20);
        },
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              _selectedIndex = index;
              setState(() {});
            },
            child: Container(
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                 color:  _selectedIndex == index
                     ? Colors.red
                     : const Color(0xff1c0907).withOpacity(0.8)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    _categoriesTypes[index],
                    style: GoogleFonts.akatab(
                      fontSize: 14,
                      color: _selectedIndex == index
                          ? Colors.white
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}