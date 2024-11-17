import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/coustom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/coustom_book_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeaturedBookListView(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18.copyWith(fontFamily: KGTSectraFine),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(

            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    ));
  }
}
