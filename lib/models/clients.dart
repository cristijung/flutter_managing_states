import 'package:flutter/cupertino.dart';
import 'package:flutter_managing_states/models/client.dart';
//classe específica q vai sempre notificar se há alguma mudança

class Clients extends ChangeNotifier {
  List<Client> clients;

  Clients({required this.clients});
}
