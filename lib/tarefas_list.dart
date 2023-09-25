import 'package:flutter/material.dart';

import 'tarefa_model.dart';

class TarefasList extends StatelessWidget {
  final List<Tarefa> tarefas;
  const TarefasList({super.key, required this.tarefas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tarefas.length,
      itemBuilder: (context, index) => 
      ListTile(
         leading: Text("${tarefas[index].prazo}"),
         title: Text(tarefas[index].descricao), 
         trailing: tarefas[index].concluido!=null?
           Icon(Icons.check):
           null,
      )
      
      ,);
  }
}