class Tarefa {
  final String nome;
  final String descricao;

  Tarefa(this.nome, this.descricao);

  @override
  String toString() {
    return 'Tarefa{nome: $nome, descricao: $descricao}';
  }
}

