import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:bookly_app/core/utlis/custom_fading_widget.dart';
import 'package:flutter/material.dart';

import 'coustom_book_item.dart';

class FeaturedBooksListViewLoadingIndcator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndcator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomBookImageLoadingIndicator()
            );
          },
        ),
      ),
    );
  }
}