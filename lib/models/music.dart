class Music {
  String id;
  String title;
  String album;
  String artist;
  String genre;
  String source;
  String image;
  int trackNumber;
  int totalTrackCount;
  int duration;
  String site;

  Music(
      {required this.id,
      required this.title,
      required this.album,
      required this.artist,
      required this.genre,
      required this.source,
      required this.image,
      required this.trackNumber,
      required this.totalTrackCount,
      required this.duration,
      required this.site});

  factory Music.fromJson(Map<String, dynamic> responseData) {
    return Music(
      id: responseData["id"],
      title: responseData["Title"],
      album: responseData["Album"],
      artist: responseData["Artist"],
      genre: responseData["Genre"],
      source: responseData["Source"],
      image: responseData["Image"],
      trackNumber: responseData["TrackNumber"],
      totalTrackCount: responseData["TotalTrackCount"],
      duration: responseData["Duration"],
      site: responseData["Site"],
    );
  }
}
