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
