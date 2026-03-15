import 'package:flutter/material.dart';
import 'package:quizapp/homepage.dart';
import 'package:quizapp/question_bank.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.score, super.key});

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3FB),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Top Image
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/score_frame.png', height: 280),

                  Text(
                    '${((score / allQuestions.length) * 100).toInt()}%',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 20),

              const Text(
                "Your Score",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),

              const SizedBox(height: 6),

              Text(
                '${score.toString()}/20',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1A00A3),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Congratulations!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1A00A3),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Great job Lara! You have done well",
                style: TextStyle(color: Colors.black54),
              ),

              const SizedBox(height: 20),

              /// Points UI
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffEFE8FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.diamond, color: Colors.purple, size: 18),
                    SizedBox(width: 6),
                    Text(
                      "200 Points",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              /// Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2E0CB3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text(
                    "Back to Home",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
