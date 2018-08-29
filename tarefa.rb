class Tarefa
  attr_reader :feita, :descricao
  attr_writer :descricao
  
  #construtor
  def initialize(desc)
    # atributos são protegidos por padrão
    @descricao = desc #atributos
    @feita = false #atributos
  end

  def marcar_como_feita()
    @feita = true
  end

  def to_s()
    return " #{ @descricao } >> Feita: #{ @feita } "
  end
end