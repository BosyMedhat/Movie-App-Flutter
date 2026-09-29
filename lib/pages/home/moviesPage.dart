import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة أفلام بسيطة
    List<Map<String, String>> movies = [
      {
        'title': 'Inception',
        'image': 'https://via.placeholder.com/150',
      },
      {
        'title': 'Avengers: Endgame',
        'image': 'https://via.placeholder.com/150',
      },
      {
        'title': 'The Dark Knight',
        'image': 'https://via.placeholder.com/150',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(movies[index]['image']!), // صورة الفيلم
            title: Text(movies[index]['title']!),             // اسم الفيلم
            onTap: () {
              // ممكن لاحقًا تفتحي صفحة تفاصيل
            },
          );
        },
      ),
    );
  }
}
