import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        backgroundColor: Colors.grey, // اللون الرصاصي
      ),
      body: Container(
        color: Colors.white, // تصحيح لون الخلفية
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.movie, color: Colors.grey),
              title: Text("Movies", style: TextStyle(color: Colors.black)),
              onTap: () {
                // يمكنك إضافة وظيفة فتح فئة الأفلام هنا
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.tv, color: Colors.grey),
              title: Text("TV Shows", style: TextStyle(color: Colors.black)),
              onTap: () {
                // يمكنك إضافة وظيفة فتح فئة المسلسلات هنا
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.star, color: Colors.grey),
              title: Text("Top Rated", style: TextStyle(color: Colors.black)),
              onTap: () {
                // يمكنك إضافة وظيفة فتح فئة الأعلى تصنيفًا هنا
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.new_releases, color: Colors.grey),
              title:
              Text("New Releases", style: TextStyle(color: Colors.black)),
              onTap: () {
                // يمكنك إضافة وظيفة فتح فئة الإصدارات الجديدة هنا
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}