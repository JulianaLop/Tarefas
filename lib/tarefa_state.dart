import 'package:flutter/material.dart';
import 'package:tarefas/tarefas_helper.dart';

import 'tarefa_model.dart';

class TarefaState {
  ValueNotifier<bool> carregando = ValueNotifier(false);
  List<Tarefa>  listaTarefas = [];
  Tarefa? tarefa;

  final TarefasHelper helper;

  TarefaState(this.helper);


  carregarLista(){
    carregando.value = true;
      helper.listar().then((lista){ 
        listaTarefas = lista;
        carregando.value = false;
    });

  }

  salvar(Tarefa tarefa) async {
    helper.salvar(tarefa);
  }

  delete() async {
    await helper.delete(tarefa!);
  }

}