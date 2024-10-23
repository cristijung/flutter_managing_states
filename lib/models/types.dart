import 'package:flutter/material.dart';
import 'package:flutter_managing_states/models/client_type.dart';

class Types extends ChangeNotifier {
  late List<ClientType> types; //verificar aqui depois pq o late

  Types({required this.types});

  void add(ClientType type) {
    types.add(type);
    notifyListeners();
  }

  void remove(int index) {
    types.removeAt(index);
    notifyListeners();
  }
}

//O 'late':
//- Inicialização tardia: O late permite que você declare uma variável não-nula que será inicializada posteriormente,
// antes de ser usada pela primeira vez. No caso da classe Types, a lista types é inicializada no construtor da classe,
// usando o parâmetro types que é obrigatório (required).
//- Evitar nulos: Como a lista types é declarada como não-nula (List<ClientType>), o uso do late garante que ela não
// será nula quando for acessada pela primeira vez. Se você não usasse o late, teria que inicializar a lista com
// um valor vazio ([]) na declaração, o que pode ser desnecessário se você já sabe que ela será inicializada no construtor.
//- Flexibilidade: O late permite que você inicialize a lista types de diferentes maneiras, dependendo das necessidades do seu aplicativo.
// Por exemplo, você poderia inicializar a lista com dados de um banco de dados ou de uma API, em vez de usar um parâmetro no construtor.
// Em resumo: O late foi utilizado na declaração da lista types para permitir a inicialização tardia, evitar nulos e oferecer mais flexibilidade
// na forma como a lista é inicializada. Isso garante que a lista estará sempre disponível e inicializada quando for usada pela primeira vez,
// sem comprometer a segurança de tipos do código.