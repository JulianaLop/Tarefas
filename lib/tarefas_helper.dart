import 'package:tarefas/tarefa_model.dart';

abstract class TarefasHelper{
  salvar(Tarefa tarefa);
  excluir();
  obter();
  listar();
}