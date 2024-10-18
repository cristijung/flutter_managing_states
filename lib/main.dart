import 'package:flutter/material.dart';
import 'package:flutter_managing_states/models/clients.dart';
import 'package:flutter_managing_states/pages/client_types_page.dart';
import 'pages/clients_page.dart';
import 'package:provider/provider.dart';

//inserindo o provider na classe main
//lendo dados do clients
// qualquer widget filho do ChangeNotifier, ou seja, o filho nesse caso é o MyApp, que a aplicação toda,
// qualquer widget filho do ChangeNotifier vai ter acesso ao valor que está no pai dele.
// Importamos um Provider e declaramos também um Provider de clientes estendendo o ChangeNotifier.
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Clients(clients: []),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de clientes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClientsPage(title: 'Clientes'),
        '/tipos': (context) => const ClientTypesPage(title: 'Tipos de cliente'),
      },
    );
  }
}
