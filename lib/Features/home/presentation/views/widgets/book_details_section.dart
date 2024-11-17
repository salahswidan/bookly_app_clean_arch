
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/coustom_book_item.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(),
        ),
        SizedBox(
          height: 43,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.montserrat().fontFamily),
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BooKRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}