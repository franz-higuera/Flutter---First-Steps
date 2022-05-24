import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: PerfilUser(),
    ),
  );
}

class PerfilUser extends StatelessWidget {
  const PerfilUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          shadowColor: Colors.blue,
          title: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 110),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
              Text(
                "Facebucles",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ]),
          ),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.grey,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 12),
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/venice.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://iteragrow.com/wp-content/uploads/2018/04/buyer-persona-e1545248524290.jpg'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        const Text(
                          "@Maria_angeles",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Expanded(
                          child: Center(
                            child: ColumnaSeg(
                              "Seguidores",
                              valor: 200,
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 1.5,
                          color: Colors.black26,
                        ),
                        const Expanded(
                          child: Center(
                            child: ColumnaSeg("Seguidos", valor: 300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          const Text(
                            "Descripción",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          //Padding(padding: EdgeInsets.only(top: 10)),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              "Hola mi nombre es frailejon ernesto perez " * 20,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class ColumnaSeg extends StatelessWidget {
  final String titulo1;
  final int valor;

  const ColumnaSeg(
    this.titulo1, {
    this.valor = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Padding(padding: EdgeInsets.only(top: 10)),
      Text(
        titulo1,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black54,
        ),
      ),
      const Padding(padding: EdgeInsets.only(top: 5)),
      Text(
        "$valor",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Padding(padding: EdgeInsets.only(top: 12)),
    ]);
  }
}
