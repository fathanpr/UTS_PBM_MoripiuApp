class MovieReview {
  final String image;
  final String title;
  final String description;
  final double rating;
  final String genre;
  final int runtime;

  const MovieReview({
    required this.image,
    required this.title,
    required this.description,
    required this.rating,
    required this.genre,
    required this.runtime,
  });
}

List<MovieReview> listMovie = [
  MovieReview(
    image: "assets/posterr0.jpeg",
    title: "Avenger: Infinity War",
    description:
        "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home",
    rating: 4.5,
    genre: "Super Hero",
    runtime: 125,
  ),
  MovieReview(
    image: "assets/poster1.jpg",
    title: "Spiderman : FFH",
    description:
        "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home ",
    rating: 4.2,
    genre: "Super Heroes",
    runtime: 121,
  ),
  MovieReview(
    image: "assets/poster4.jpg",
    title: "Avengers : EndGame",
    description:
        "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.",
    rating: 4.3,
    genre: "Supernatural",
    runtime: 156,
  ),
  MovieReview(
    image: "assets/poster2.jpg",
    title: "Spiderman : NWH",
    description:
        "With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.",
    rating: 4.4,
    genre: "Shounen",
    runtime: 154,
  ),
  MovieReview(
    image: "assets/poster3.jpg",
    title: "Avengers : Infinity War",
    description:
        "Avengers: Infinity War is a 2018 American superhero film based on the Marvel Comics superhero team the Avengers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the sequel to The Avengers (2012) and Avengers: Age of Ultron (2015), and the 19th film in the Marvel Cinematic Universe (MCU)",
    rating: 4.5,
    genre: "Super Heroes",
    runtime: 180,
  ),
  //GANTI

  MovieReview(
    image: "assets/poster5.jpg",
    title: "The Invisible Guest",
    description:
        "This Spanish film raises the story of uncovering a murder mystery. Before the trial, the lawyer asked his client to describe the events in detail. Unexpectedly, it turned out that his testimony led to another case that he had been hiding for so long. Presenting a double plot twist, you will be surprised by the ending.",
    rating: 4.5,
    genre: "Thriller",
    runtime: 150,
  ),
  MovieReview(
    image: "assets/poster6.jpg",
    title: "What Happened To Monday",
    description:
        "Are you interested in human population issues? If so, you can't miss this film. The policy of a country that prohibits every family from having more than one child is a solution to avoid population explosion. Surviving with 6 other identical twins is a challenge in itself. This film made by Tommy Wirkola will leave you stunned for a long time from the beginning to the end of the story.",
    rating: 4.2,
    genre: "Thriller",
    runtime: 130,
  ),
  MovieReview(
    image: "assets/poster7.jpg",
    title: "Gone Girl",
    description:
        "Starring Ben Affleck, this film won't let you down. The sudden disappearance of his wife makes Nick ask the police for help to uncover the case. You will be invited to collect mystery puzzles about the whereabouts of Amy (Rosamund Pike). After the film ends, you will be astonished by the reality of the actual events.",
    rating: 4.3,
    genre: "Thriller",
    runtime: 140,
  ),
];

// import 'dart:convert';

// class MovieModel {
//   String? title;
//   String? rating;
//   String? runtime;
//   String? genre;
//   String? plot;
//   List<String>? images;

//   MovieModel(
//       {this.title,
//       this.rating,
//       this.runtime,
//       this.genre,
//       this.plot,
//       this.images});

//   MovieModel.fromJson(Map<String, dynamic> json) {
//     title = json['Title'];
//     rating = json['Rating'];
//     runtime = json['Runtime'];
//     genre = json['Genre'];
//     plot = json['Plot'];
//     images = json['Images'].cast<String>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Title'] = this.title;
//     data['Rating'] = this.rating;
//     data['Runtime'] = this.runtime;
//     data['Genre'] = this.genre;
//     data['Plot'] = this.plot;
//     data['Images'] = this.images;
//     return data;
//   }

//   List<MovieModel> parse(String? json){
//     if(json==null){
//       return[];
//     }
//     final List parsed = jsonDecode(json)["mv"];
//     return parsed.map((data) => MovieModel.fromJson(data)).toList();
//   }
// }