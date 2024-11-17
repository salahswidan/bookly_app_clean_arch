
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}
