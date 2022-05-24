import 'package:ejemplos3/EjemplosW/movies_class.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: InfoMovie(),
    ),
  );
}

class InfoMovie extends StatelessWidget {
  InfoMovie({Key? key}) : super(key: key);

  final Movie movie = lordOfTheRings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: const [
              Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  "Cuevana 3",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.movie_creation,
                size: 20,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
//______________________________________
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TopMovie(movie),
              Expanded(child: MiddleMovie(movie)),
              Expanded(child: BottomMovie(movie)),
            ],
          ),
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------

class TopMovie extends StatelessWidget {
  final Movie movie;
  const TopMovie(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //____

    TextStyle ownstyle1 = const TextStyle(
      color: Color.fromARGB(150, 250, 250, 250),
      fontSize: 14,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 25),
        Text(
          movie.title,
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.yellow, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            bottom: 15.0,
            left: 5.0,
            right: 5.0,
          ),
          child: Row(
            children: [
              Text(
                "${movie.year}",
                style: ownstyle1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                  right: 5.0,
                ),
                child: Text(
                  movie.rating,
                  style: ownstyle1,
                ),
              ),
              Text(
                "${movie.minutes}",
                style: ownstyle1,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    movie.tags.join(", "),
                    style: ownstyle1,
                    textAlign: TextAlign.end,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//----------------------------------------------------------------------

class MiddleMovie extends StatelessWidget {
  final Movie movie;
  const MiddleMovie(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.white,
            width: 0.3,
            style: BorderStyle.solid,
          ),
          bottom: BorderSide(
            color: Colors.white,
            width: 0.3,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.network(movie.posterAsset, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Sinopsis",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    movie.plot * 2,
                    //overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      height: 1.2,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

//------------------------------------------------------------------------
class BottomMovie extends StatelessWidget {
  final Movie movie;
  const BottomMovie(this.movie, {Key? key}) : super(key: key);

  TableRow _tableRow(String label, List<String> people, {String sep = ', '}) {
    const textStyle2 = TextStyle(
      color: Colors.white,
      fontSize: 14,
      height: 1.3,
    );

    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(label,
            style: textStyle2.copyWith(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          people.join(sep),
          style: textStyle2,
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(3.5),
          },
          children: [
            _tableRow("Directors", movie.directors),
            _tableRow("Writers", movie.writers),
            _tableRow("Actors", movie.actors, sep: '\n'),
          ],
        ),
      ),
    );
  }
}
