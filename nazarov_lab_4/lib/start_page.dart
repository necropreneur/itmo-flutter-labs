import 'package:flutter/material.dart';
import 'package:nazarov_lab_4/bloc/bloc.dart';
import 'package:nazarov_lab_4/bloc/event.dart';
import 'package:provider/provider.dart';
import 'question_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Рандомный вопрос для викторины")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (BuildContext context) => const QuestionPage()),
            );
            context.read<QuestionBloc>().add(LoadDataEvent());
          },
          child: Container(
            height: 50,
            width: mediaQuery.size.width - 32,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: const Center(child: Text("Найти", style: TextStyle(color: Colors.white))),
          ),
        ),
      ),
    );
  }
}
