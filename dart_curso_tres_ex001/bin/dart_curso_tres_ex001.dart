void main(List<String> arguments) {
  Pessoa pessoaDandara = Pessoa('Dandara', 18, true); // Passamos os argumentos para a classe Pessoa
  pessoaDandara.toMap(); // Chamou o método que retorna o os argumentos que passamos, em formatado de Map
}

class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() { // Método que faz a conversão para .toMap
    Map<String, dynamic> resultado = {}; // Cria a lista vazia
    resultado['Nome:'] = this.nome; //Adiciona 1 item equivalente ao parâmetro 'this.nome' da classe Pessoa, que já teve o valor definido no argumento passado na função main
    resultado['Idade'] = this.idade; // Mesma coisa da linha acima
    resultado['estarAutenticada'] = this.estaAutenticada; //Mesma coisa da linha acima
    return resultado;
  }
}
