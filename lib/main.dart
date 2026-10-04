import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minhas Finanças',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(title: 'Minhas Finanças'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Account> accounts = [
    Account(name: 'Conta corrente', balanceCents: 150000),
    Account(name: 'Carteira', balanceCents: 8000),
  ];

  @override
  Widget build(BuildContext context) {
    var format = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: accounts
            .map(
              (a) => ListTile(
                title: Text(a.name),
                subtitle: Text(format.format(a.balanceCents / 100)),
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          accounts.add(Account(name: 'Nova conta', balanceCents: 0));
        }),
        tooltip: 'Adicionar conta',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Account {
  final String name;
  final int balanceCents;

  Account({required this.name, required this.balanceCents});
}
