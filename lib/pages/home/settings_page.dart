import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.grey, // اللون الرصاصي
      ),
      body: Container(
        color: Colors.white, // تم نقل اللون هنا
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            // قسم حساب المستخدم
            UserAccountsDrawerHeader(
              accountName: Text("Suga",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
              accountEmail: Text("minyoongii@gmail.com",
                  style: TextStyle(fontSize: 14, color: Colors.black54)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.grey, size: 40),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300, // اللون الرصاصي الفاتح
              ),
            ),

            // إعدادات التطبيق
            ListTile(
              leading: Icon(Icons.lock, color: Colors.grey),
              title: Text("Change Password",
                  style: TextStyle(color: Colors.black)),
              onTap: () {
                // وظيفة تغيير كلمة السر
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.notifications, color: Colors.grey),
              title:
              Text("Notifications", style: TextStyle(color: Colors.black)),
              onTap: () {
                // وظيفة الإشعارات
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.language, color: Colors.grey),
              title: Text("Language", style: TextStyle(color: Colors.black)),
              onTap: () {
                // وظيفة تغيير اللغة
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.help, color: Colors.grey),
              title:
              Text("Help & Support", style: TextStyle(color: Colors.black)),
              onTap: () {
                // وظيفة الدعم
              },
            ),
            Divider(),

            // تسجيل الخروج
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.grey),
              title: Text("Log Out", style: TextStyle(color: Colors.red)),
              onTap: () {
                // وظيفة تسجيل الخروج
              },
            ),
          ],
        ),
      ),
    );
  }
}