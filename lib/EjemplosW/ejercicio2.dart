import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    title: "specialwidget",
    theme: ThemeData(
      primarySwatch: Colors.orange,
      primaryColor: Colors.orange,
    ),
    home: const SpecialWidget(),
  ));
}

class SpecialWidget extends StatelessWidget {
  const SpecialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botones de selección"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            ChooseSet2(
              //colordef: Colors.red,
              listaf: [
                'ddd',
                'fdf',
                'dgdfg',
                '34',
                'sda',
              ],
            )
          ],
        ),
      ),
    );
  }
}

//____________________________________________________________

class ChooseSet extends StatefulWidget {
  Color? fondof;
  String textof;

  ChooseSet({
    this.fondof,
    this.textof = "vacio",
    Key? key,
  }) : super(key: key);

  @override
  State<ChooseSet> createState() => _ChooseSetState();
}

class _ChooseSetState extends State<ChooseSet> {
  bool _activo = false;

  @override
  void initState() {
    super.initState();
    _activo = false;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.fondof == null) {
      widget.fondof = Theme.of(context).primaryColor;
    }

    return MaterialButton(
      onPressed: () {
        print("oprimido");
        setState(() {
          _activo = !_activo;
          //print("estado: $_activo");
        });
      },
      color: (_activo ? Colors.white : widget.fondof),
      shape: StadiumBorder(
          side: (_activo
              ? BorderSide(color: Theme.of(context).primaryColor)
              : BorderSide.none)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              (_activo ? Icons.remove : Icons.check),
              color: (_activo ? widget.fondof : Colors.white),
            ),
            const SizedBox(width: 10),
            Text(
              widget.textof,
              style: TextStyle(
                  color: (_activo ? widget.fondof : Colors.white),
                  fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

//_________________________________________

class ChooseSet2 extends StatelessWidget {
  final Color? colordef;
  final List<String>? listaf;

  const ChooseSet2({this.colordef, required this.listaf, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int i;
    int? b = listaf?.length;

    return Wrap(
      children: [
        for (i = 0; i < b!; i++)
          ChooseSet(
            fondof: colordef,
            textof: "${listaf![i]}",
          ),
      ],
    );
  }
}
