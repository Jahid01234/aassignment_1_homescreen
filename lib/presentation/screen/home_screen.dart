import 'package:assignment_1_homescreen/presentation/widgets/categories_type_section.dart';
import 'package:assignment_1_homescreen/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:assignment_1_homescreen/presentation/widgets/header_section_widget.dart';
import 'package:assignment_1_homescreen/presentation/widgets/movie_card_picker.dart';
import 'package:assignment_1_homescreen/presentation/widgets/search_box_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1st: Header section.........
              const HeaderSectionWidget(),
              // 2nd: search box section.......
              const SearchBoxSection(),
              const SizedBox(height: 30),
              // 3rd: category  section.......
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.akatab(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See more",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const CategoriesTypeSection(),
              const SizedBox(height: 20),
              // 4th: slider image section.......
              SizedBox(
                height: 146,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/slider.png",
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 20),
              // 5th: Trading movie's part section.......
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Movies",
                    style: GoogleFonts.akatab(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See more",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                     MovieCardPicker(
                      image: "assets/images/yes_i.png",
                      text: "Yes I do",
                    ),
                    SizedBox(width: 20),
                     MovieCardPicker(
                      image: "assets/images/soual_mate.png",
                      text: "Soul Mate",
                    ),
                    SizedBox(width: 20),
                     MovieCardPicker(
                      image: "assets/images/babylon.png",
                      text: "Babylon",
                    ),
                    SizedBox(width: 20),
                    MovieCardPicker(
                      image: "assets/images/sunita.png",
                      text: "Sunita",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),


              // 6th: Trading movie's part section.......
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Continue Watching",
                    style: GoogleFonts.akatab(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See more",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 167,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MovieCardPicker(
                      height: 98,
                      width: 167,
                      image: "assets/images/wednesday.png",
                      fit: BoxFit.fitWidth,
                      text: "Wednesday I Season - 1I Episode - 3",
                    ),
                    SizedBox(width: 40),
                    MovieCardPicker(
                      height: 98,
                      width: 167,
                      image: "assets/images/emily.png",
                      fit: BoxFit.fitWidth,
                      text: "Emily in Paris I Season - 1I Episode - 1",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),


              // 7th: Recommended For You part section.......
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For You",
                    style: GoogleFonts.akatab(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See more",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MovieCardPicker(
                      image: "assets/images/yes_i_do.png",
                      text: "Yes I do",
                    ),
                    SizedBox(width: 20),
                    MovieCardPicker(
                      image: "assets/images/inside_out.png",
                      text: "Inside out of",
                    ),
                    SizedBox(width: 20),
                    MovieCardPicker(
                      image: "assets/images/sunita.png",
                      text: "Sunita",
                    ),
                    SizedBox(width: 20),
                    MovieCardPicker(
                      image: "assets/images/babylon.png",
                      text: "Babylon",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
