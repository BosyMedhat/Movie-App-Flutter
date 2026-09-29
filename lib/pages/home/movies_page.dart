import 'package:flutter/material.dart';
import 'dart:math';

class MoviesPage extends StatelessWidget {
  final List<Map<String, String>> movies = [
    {"title": "Doctor Strange", "image": "assets/imagess/doctor_strange_poster.jpg"},
    {"title": "Matrix", "image": "assets/imagess/matrix_poster.jpg"},
    {"title": "Moon Fall", "image": "assets/imagess/moon_fall_poster.jpeg"},
    {"title": "Morbius", "image": "assets/imagess/morbius_poster.jpg"},
    {"title": "Spider Man", "image": "assets/imagess/spider_man_poster.jpg"},
    {"title": "The Batman", "image": "assets/imagess/the_batman_poster.jpg"},
    {"title": "Thor", "image": "assets/imagess/thor_poster.jpg"},
    {"title": "Uncharted", "image": "assets/imagess/uncharted_poster.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    // تكرار 4 صور عشوائية
    final random = Random();
    final extraImages = List.generate(4, (_) => movies[random.nextInt(movies.length)]);
    final moviesWithTwelve = List.from(movies)..addAll(extraImages);

    return Scaffold(
      appBar: AppBar(title: Text("Movies")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: moviesWithTwelve.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            final movie = moviesWithTwelve[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                      child: Image.asset(
                        movie["image"]!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      movie["title"]!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
