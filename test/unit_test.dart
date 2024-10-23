import 'package:flutter/material.dart';
import 'package:flutter_managing_states/models/client.dart';
import 'package:flutter_managing_states/models/client_type.dart';
import 'package:flutter_managing_states/models/clients.dart';
import 'package:flutter_managing_states/models/types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Clients Test', () {
    final ana = Client(
        name: 'Ana',
        email: 'ana@email.com',
        type: ClientType(name: 'Gold', icon: Icons.star));

    test('Clients model should add new client', () {
      var clients = Clients(clients: []);
      clients.add(ana);
      clients.add(ana);
      expect(clients.clients, [ana, ana]);
    });

    test('Clients model should remove old client', () {
      var clients = Clients(clients: [ana, ana, ana]);
      clients.remove(0);
      clients.remove(1);
      expect(clients.clients, [ana]);
    });
  });

  group('Types Test', () {
    final gold = ClientType(name: 'Golden', icon: Icons.star);

    test('Types model should add new type', () {
      var types = Types(types: []);
      types.add(gold);
      types.add(gold);
      expect(types.types, [gold, gold]);
    });
    test('Types model should remove old type ', () {
      var types = Types(types: [gold, gold, gold]);
      types.remove(0);
      types.remove(1);
      expect(types.types, [gold]);
    });
  });
}