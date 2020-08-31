import 'package:moreviewviee_app/modal/genre_response.dart';

class MovieDetail {
  final int id;
  final bool adult;
  final int budget;
  final List<Genres> genres;
  final String releaseDate;
  final int runtime;

  MovieDetail(this.id, this.adult, this.budget, this.genres, this.releaseDate,
      this.runtime);

  MovieDetail.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        adult = json["adult"],
        budget = json["budget"],
        genres = (json["genres"] as List)
            .map((i) => new Genres.fromJson(i))
            .toList(),
        releaseDate = json["release_date"],
        runtime = json["runtime"];
}
