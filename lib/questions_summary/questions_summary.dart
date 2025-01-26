import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data){
              return Row(children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 250, 126, 117),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    )
                  ),
                  
                ),
                Expanded(
                  child: Column(children: [
                    Text(data['question'] as String),
                    SizedBox(height: 7,),
                    Text(data['user_answer'] as String),
                    SizedBox(height: 4,),
                    Text(data['correct_answer'] as String),
                  ],),
                )
              ],);
            },
          ).toList(),
        ),
      ),
    );
  }
}
