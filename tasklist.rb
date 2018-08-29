require_relative 'tarefa'

def menu()
  puts "\n\n"
  puts "MENU"
  puts "[1] Inserir uma tarefa"
  puts "[2] Ver todas tarefas"
  puts "[0] Sair"
  print "Opção Escolhida: "
  # problema de escopo de variaveis
  opcao_esc = gets().to_i() #vou receber uma string com o que foi digitado
  puts "\n\n"
  return opcao_esc
end

puts "Bem-vindo ao TaskList"
opcao = menu()
tarefas = []

while(opcao != 0) do
  #tomar uma decisao: o que fazer a partir da opcao escolhida
  if(opcao == 1)
    
    print "Nome da Tarefa: "
    tarefa = gets().chomp()
    puts "Tarefa Cadastrada >>> " + tarefa
    tarefas << Tarefa.new(tarefa)

  elsif(opcao == 2)
    puts "Tarefas Cadastradas"
    puts tarefas
  end

  opcao = menu()
end

puts "Adeus..."