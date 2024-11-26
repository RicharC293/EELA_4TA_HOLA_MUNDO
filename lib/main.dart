import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomeConEstado(),
    );
  }
}

/// Es widget sin estado -> estático -> no cambia
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar es un widget de flutter
      appBar: AppBar(
        /// Title del widget app bar
        title: const Text("Mi widget stateless"),
      ),
    );
  }
}

/// Widget statefull -> cambia -> estado
class HomeConEstado extends StatefulWidget {
  const HomeConEstado({super.key});

  @override
  State<HomeConEstado> createState() => _HomeConEstadoState();
}

class _HomeConEstadoState extends State<HomeConEstado> {
  int contador = 0;

  void contadorFuncion() {
    contador++;
    setState(() {
      /// Cambiar el estado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi widget stateful"),
      ),
      // Center centra todo el contenido
      body: Center(
        child: Text("El valor es: $contador"),
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: Colors.red,
        backgroundColor: Colors.amber,
        onPressed: contadorFuncion,

        /// Agregar un icono
        /// Usar el widget Icon
        /// Icon recibe como param un tipo IconData -> Icons.
        child: const Icon(Icons.add),
      ),
    );
  }
}
