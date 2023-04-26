import 'package:flutter/material.dart';
import 'package:quiz/presentation/widget/question_option_widget.dart';
import 'package:quiz/presentation/widget/question_text_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question"),        
      ),
      body: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),

        child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: QuestionTextWidget(text: 'Quanto é 3+3*3?'), 
            ),
            Expanded(
              
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
              children: [
                QuestionOptionWidget(text: '8', action: onAnswared),
                QuestionOptionWidget(text: '10', action: onAnswared),
                QuestionOptionWidget(text: '12', action: onAnswared),
                QuestionOptionWidget(text: '5', action: onAnswared),
                ],
            ),
            )
             
          ),
        ],
      ),
      ),
    );
  }

  void onAnswared(String answear){
    setState(() {
      _visible = false;
    });

  }
}