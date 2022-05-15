import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'HelloWorld do Marcos Venturi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool btnDesabilitado = true;

  @override
  Widget build(BuildContext context) {
    // vamos criar uma caixa de texto chamada nomeTxt
    final nomeTxt = TextField(
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: 'Digite seu nome'),
        // Vamos detectar a mudança de conteúdo do TextField
        onChanged: (String value) async {
          // setState() força a atualização da janela
          if (value.isEmpty) {
            // o campo de texto não está vazio
            setState(() {
              btnDesabilitado = true; // desabilita o botão
            });
          } else {
            setState(() {
              btnDesabilitado = false; // habilita o botão
            });
          }
        });

    final btnNome = ElevatedButton(
      onPressed: btnDesabilitado ? null : () {},
      child: Text('Clique Aqui'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World Equipe 05"),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                // a caixa de texto TextField vai aqui
                nomeTxt,
                // o botão vai aqui
                btnNome,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
