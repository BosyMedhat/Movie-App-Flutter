import 'package:cine_movie_app/pages/home/widgets/body.dart';
import 'package:flutter/material.dart';
import 'widgets/app_bar.dart';
import '/constants.dart';
import 'movies_page.dart'; // استخدمي الاسم الصحيح فقط
import 'settings_page.dart';
import 'categories_page.dart';
import 'about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: kPrimaryColor),
              child: const Text(
                'CineMovie',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // مش هتعملي Push لنفس الصفحة
              },
            ),
            ListTile(
              leading: const Icon(Icons.movie),
              title: const Text('Movies'),
              onTap: () {
                Navigator.pop(context); // يقفل القائمة
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoviesPage()),
                );
              },
            ),
            ListTile(
              leading:
              Icon(Icons.category, color: Colors.grey), // أيقونة الفئات
              title: Text("Categories", style: TextStyle(color: Colors.grey)),
              onTap: () {
                // الانتقال إلى صفحة الفئات عند الضغط على الأيقونة
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.grey),
              title: Text("About", style: TextStyle(color: Colors.grey)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.grey),
              title: const Text("Settings", style: TextStyle(color: Colors.grey)),
              onTap: () {
                // الانتقال إلى صفحة الإعدادات عند الضغط على الأيقونة
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),

          ],
        ),
      ),
      body: const HomeBody(),
    );
  }
}
