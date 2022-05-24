class Movie {
  String title, rating, plot, posterAsset;
  int year, minutes;
  List<String> tags, directors, writers, actors;

  Movie({
    this.title = "",
    this.rating = "",
    this.plot = "",
    this.posterAsset = "",
    this.year = 0,
    this.minutes = 0,
    this.tags = const [],
    this.directors = const [],
    this.writers = const [],
    this.actors = const [],
  });
}

final lordOfTheRings = Movie(
  title: "The Lord of the Rings: The Fellowship of the Ring",
  rating: "PG-13",
  plot:
      "In the first part of J.R.R. Tolkien's epic masterpiece, The Lord of the Rings, a shy young hobbit named Frodo Baggins inherits a simple gold ring. He knows the ring has power, but not that he alone holds the secret to the survival--or enslavement--of the entire world. Now Frodo, accompanied by a wizard, an elf, a dwarf, two men and three loyal hobbit friends, must become the greatest hero the world has ever known to save the land and the people he loves.",
  posterAsset:
      "https://es.web.img2.acsta.net/c_310_420/medias/nmedia/18/89/67/45/20061512.jpg",
  year: 2001,
  minutes: 178,
  tags: ["Adventure", "Fantasy", "Action"],
  directors: ["Peter Jackson"],
  writers: [
    "J.R.R. Tolkien (novel)",
    "Frank Walsh (screenplay)",
    "Philippa Boyens (Screenplay)",
    "Peter Jackson (screenplay)",
  ],
  actors: [
    "Elijah Wood",
    "Ian McKellen",
    "Viggo Nortersen",
    "Sean Kingston",
    "Liv  Tyler",
    "Elijah Wood",
    "Ian McKellen",
    "Viggo Nortersen",
    "Sean Kingston",
    "Liv  Tyler",
    "Elijah Wood",
    "Ian McKellen",
    "Viggo Nortersen",
    "Sean Kingston",
    "Liv  Tyler",
  ],
);
