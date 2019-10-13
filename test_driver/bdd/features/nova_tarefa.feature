# language: pt
Funcionalidade: Listagem de Tarefas

  @wip
  Cenario: Adicionar nova tarefa
    Dado que acessei a tela de criação de nova tarefa
    E preenchi os campos do formulario
    Quando salvar a tarefa
    Entao a tarefa deve ser exibida da listagem
