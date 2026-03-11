import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/question_bank.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int totalSeconds = 30;
  int currentSeconds = 0;
  int currentQuestNumber = 1;
  Timer? _timer;
  List<OptionsModel> options = [
    OptionsModel(label: 'a', answer: '6,3,4', color: Color(0xffFDD6D9)),
    OptionsModel(label: 'b', answer: '1,2,3', color: Color(0xffD5D0EA)),
    OptionsModel(label: 'c', answer: '6,5,3', color: Color(0xffF0D0EF)),
    OptionsModel(label: 'd', answer: '7,2,3'),
  ];
  startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      currentSeconds++;
      setState(() {});
      if (currentSeconds >= 30) {
        currentSeconds = 0;
        currentQuestNumber++;
      }
      print(currentSeconds);
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style: GoogleFonts.archivo(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Question',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                '$currentQuestNumber/${allQuestions.length}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              trailing: Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  CircularProgressIndicator(
                    value: currentSeconds / totalSeconds,
                    color: Color(0xff1A00A3),
                    strokeCap: StrokeCap.round,
                    backgroundColor: Color(0xffE2DFEF),
                    constraints: BoxConstraints(minWidth: 55, minHeight: 55),
                  ),
                  Text(
                    currentSeconds.toString(),
                    style: GoogleFonts.archivo(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            LinearProgressIndicator(
              value: currentQuestNumber / allQuestions.length,
            ),

            SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              height: 90,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFECB9EC)),
                color: Color(0xFFFCDEF9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                allQuestions[currentQuestNumber - 1].question,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return AnswerCard(
                    label: options[index].label,
                    backgroundColor: options[index].color,
                    child: Text(
                      allQuestions[currentQuestNumber - 1].options[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    required this.label,
    required this.child,
    this.backgroundColor,
    super.key,
  });

  final String label;
  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: backgroundColor,
            child: Text(label),
          ),
          SizedBox(width: 10),
          child,
        ],
      ),
    );
  }
}

class OptionsModel {
  const OptionsModel({
    required this.label,
    required this.answer,
    this.color = const Color(0xffFBF3DD),
  });
  final String label;
  final String answer;
  final Color color;
}
