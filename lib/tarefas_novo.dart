import 'package:flutter/material.dart';
import 'package:tarefas/tarefas_form.dart';
import 'tarefas_helper.dart';
import 'tarefa_state.dart';

class TarefasNovo extends StatelessWidget {
  final TarefaState state;
  final TarefasHelper helper;
  const TarefasNovo({super.key, required this.state, required this.helper});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Tarefa"),
         ),
         body:TarefasNovo(state: this.state, helper: helper,),
    );
  }
}