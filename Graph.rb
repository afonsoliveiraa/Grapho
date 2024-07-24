class Grafo
  # Construtor
  def initialize
    # Define o valor padrão como um hash vazio
    @vertices = Hash.new { |hash, key| hash[key] = {} }
  end

  # Inserir vértices e arestas
  def insert_vertice(value)
    @vertices[value]
  end

  def insert_aresta(peso, vertice_one, vertice_two)
    if @vertices.key?(vertice_one) && @vertices.key?(vertice_two)
      @vertices[vertice_one][vertice_two] = peso
      @vertices[vertice_two][vertice_one] = peso
    else
      puts "Erro: Um ou ambos os vértices não existem."
    end
  end

  # Visualização
  def display
    print @vertices
  end
end

# Instanciando o objeto
grafo = Grafo.new
grafo.insert_vertice("A")
grafo.insert_vertice("B")
grafo.insert_aresta(10, "A", "B")

# Exibindo o grafo
grafo.display
