import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

//clase principal

class Personaje {
  String nombre;
  String tipo;
  Personaje(this.nombre, this.tipo);

//metodo:

  void atacar() {
    print("ATACAR");
  }
}

// clase que HEREDA "guerrero"

class Guerrero extends Personaje {
  String poder;

  Guerrero(nombre, tipo, this.poder) : super(nombre, tipo);

// clase de SOBRECARGA

  void atacarConFuerza(int fuerza) {
    print('$nombre ataca con su arma con una fuerza de $fuerza!');
  }

  // Polimorfismo: método que llama a otro método

  void habilidadEspecial() {
    atacarConFuerza(100);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Guerrero> guerreros = [
      Guerrero("Athena", "Diosa", "Sabiduría"),
      Guerrero("Hercules", "Semi-Dios", "Fuerza Inmensa"),
      Guerrero("Odysseus", "Humano", "Ingenio"),
      Guerrero("Achilles", "Guerrero", "Invulnerabilidad"),
      Guerrero("Perseus", "Héroe", "Valor"),
      Guerrero("Hera", "Diosa", "Poder Divino"),
      Guerrero("Zeus", "Dios", "Rayo"),
      Guerrero("Hades", "Dios", "Inframundo"),
      Guerrero("Apollo", "Dios", "Arquería"),
      Guerrero("Artemis", "Diosa", "Caza"),
      Guerrero("Ares", "Dios", "Guerra"),
      Guerrero("Hermes", "Dios", "Velocidad"),
      Guerrero("Dionysus", "Dios", "Éxtasis"),
      Guerrero("Poseidon", "Dios", "Mar"),
      Guerrero("Hephaestus", "Dios", "Fuego y Forja"),
      Guerrero("Aphrodite", "Diosa", "Amor"),
      Guerrero("Orpheus", "Humano", "Música"),
      Guerrero("Theseus", "Héroe", "Destreza"),
      Guerrero("Atalanta", "Humana", "Velocidad"),
      Guerrero("Jason", "Héroe", "Liderazgo"),
      Guerrero("Medusa", "Criatura", "Petrificación"),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personajes"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
            child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: guerreros.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Text(guerreros[index].nombre),
                              subtitle: Text(
                                  "${guerreros[index].tipo} - ${guerreros[index].poder}"),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              print("Atacando a ${guerreros[index].nombre}");
                            },
                            child: const Text("Atacar"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
