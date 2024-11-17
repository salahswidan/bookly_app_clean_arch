import 'package:bookly_app/core/utlis/app_router.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KSearchView);
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ))
        ],
      ),
    );
  }
}
