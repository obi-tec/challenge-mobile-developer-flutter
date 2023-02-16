import 'package:challange_mobile_developer_flutter/presenter/pages/home/components/home_page_movie_card.dart';
import 'package:challange_mobile_developer_flutter/presenter/pages/home/components/home_page_select_movie_type_bar.dart';
import 'package:challange_mobile_developer_flutter/presenter/pages/home/home_controller.dart';
import 'package:challange_mobile_developer_flutter/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Column(
        children: [
          HomePageSelectMovieTypeBar(),
          Expanded(
            child: ListView.builder(
              itemCount: controller.movies.length,
              itemBuilder: (context, index) {
                final movie = controller.movies[index];
                return HomePageMovieCard(
                  image: movie.image,
                  movieName: movie.name,
                  releaseDate: movie.releaseDate,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
