import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink[50],
        fontFamily: 'Arial',
      ),
      title: "Cute Resume",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "💖 My Cute Resume 💖",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          elevation: 5,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.pinkAccent.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // รูปโปรไฟล์
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage("assets/images/2.jpg"),
                    backgroundColor: Colors.pinkAccent,
                  ),
                  const SizedBox(height: 20),

                  // ชื่อ
                  const Text(
                    "Chawanlak Jitman Pretty",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Sexy Pretty Kawaii Eiei",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const Divider(thickness: 1, height: 40, color: Colors.pinkAccent),

                  // Personal Information
                  sectionTitle("🎀 Personal Information"),
                  infoRow(Icons.music_note, "Hobby", "Cover Dance"), // เปลี่ยนไอคอนเป็นเพลง
                  infoRow(Icons.fastfood, "Food", "Ramen"),
                  infoRow(Icons.location_on, "Birthplace", "Phitsanulok"),
                  const SizedBox(height: 20),

                  // Education
                  sectionTitle(" 🎓 Education"),
                  educationTile("Elementary", "Yannarate Patana Phittayakom School", "2016"),
                  educationTile("Primary", "Yannarate Patana Phittayakom", "2019"),
                  educationTile("High School", "Traim Udom Suksa School Of The North", "2022"),
                  educationTile("Undergrad", "Naresuan University", "2026"),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget สำหรับ Section Title
  Widget sectionTitle(String title) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 120,
          height: 3,
          color: Colors.pinkAccent,
        ),
        const SizedBox(height: 20),
      ]
    );
  }

  // Widget สำหรับแสดงข้อมูลส่วนตัว
  Widget infoRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.pinkAccent, size: 28),
          const SizedBox(width: 10),
          Text(
            "$title: ",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  // Widget สำหรับการศึกษา
  Widget educationTile(String level, String school, String year) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "$level: $school",
              style: const TextStyle(fontSize: 14),
            ),
          ),
          Text(
            year,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
