class Song {
  Song({
    required this.artistId,
    required this.collectionId,
    required this.trackId,
    required this.artistName,
    required this.collectionName,
    required this.trackName,
    required this.collectionCensoredName,
    required this.trackCensoredName,
    required this.artistViewUrl,
    required this.collectionViewUrl,
    required this.trackViewUrl,
    required this.previewUrl,
    required this.artworkUrl30,
    required this.artworkUrl60,
    required this.artworkUrl100,
    required this.collectionPrice,
    required this.trackPrice,
    required this.releaseDate,
    required this.collectionExplicitness,
    required this.trackExplicitness,
    required this.discCount,
    required this.discNumber,
    required this.trackCount,
    required this.trackNumber,
    required this.trackTimeMillis,
    required this.country,
    required this.currency,
    required this.primaryGenreName,
    required this.isStreamable,
    required this.collectionArtistId,
    required this.collectionArtistName,
  });

  int artistId;
  int collectionId;
  int trackId;
  String artistName;
  String collectionName;
  String trackName;
  String collectionCensoredName;
  String trackCensoredName;
  String artistViewUrl;
  String collectionViewUrl;
  String trackViewUrl;
  String previewUrl;
  String artworkUrl30;
  String artworkUrl60;
  String artworkUrl100;
  String collectionExplicitness;
  String trackExplicitness;
  double collectionPrice;
  double trackPrice;
  DateTime releaseDate;
  int discCount;
  int discNumber;
  int trackCount;
  int trackNumber;
  int trackTimeMillis;
  String country;
  String currency;
  String primaryGenreName;
  bool isStreamable;
  int? collectionArtistId;
  String? collectionArtistName;

  factory Song.fromJson(Map<String, dynamic> json) => Song(
        artistId: json["artistId"],
        collectionId: json["collectionId"],
        trackId: json["trackId"],
        artistName: json["artistName"],
        collectionName: json["collectionName"],
        trackName: json["trackName"],
        collectionCensoredName: json["collectionCensoredName"],
        trackCensoredName: json["trackCensoredName"],
        artistViewUrl: json["artistViewUrl"],
        collectionViewUrl: json["collectionViewUrl"],
        trackViewUrl: json["trackViewUrl"],
        previewUrl: json["previewUrl"],
        artworkUrl30: json["artworkUrl30"],
        artworkUrl60: json["artworkUrl60"],
        artworkUrl100: json["artworkUrl100"],
        collectionPrice: json["collectionPrice"],
        trackPrice: json["trackPrice"],
        releaseDate: DateTime.parse(json["releaseDate"]),
        collectionExplicitness: json["collectionExplicitness"],
        trackExplicitness: json["trackExplicitness"],
        discCount: json["discCount"],
        discNumber: json["discNumber"],
        trackCount: json["trackCount"],
        trackNumber: json["trackNumber"],
        trackTimeMillis: json["trackTimeMillis"],
        country: json["country"],
        currency: json["currency"],
        primaryGenreName: json["primaryGenreName"],
        isStreamable: json["isStreamable"],
        collectionArtistId: json["collectionArtistId"],
        collectionArtistName: json["collectionArtistName"],
      );

  Map<String, dynamic> toJson() => {
        "artistId": artistId,
        "collectionId": collectionId,
        "trackId": trackId,
        "artistName": artistName,
        "collectionName": collectionName,
        "trackName": trackName,
        "collectionCensoredName": collectionCensoredName,
        "trackCensoredName": trackCensoredName,
        "artistViewUrl": artistViewUrl,
        "collectionViewUrl": collectionViewUrl,
        "trackViewUrl": trackViewUrl,
        "previewUrl": previewUrl,
        "artworkUrl30": artworkUrl30,
        "artworkUrl60": artworkUrl60,
        "artworkUrl100": artworkUrl100,
        "collectionPrice": collectionPrice,
        "trackPrice": trackPrice,
        "releaseDate": releaseDate.toIso8601String(),
        "discCount": discCount,
        "discNumber": discNumber,
        "trackCount": trackCount,
        "trackNumber": trackNumber,
        "trackTimeMillis": trackTimeMillis,
        "country": country,
        "currency": currency,
        "primaryGenreName": primaryGenreName,
        "isStreamable": isStreamable,
        "collectionArtistId": collectionArtistId,
        "collectionArtistName": collectionArtistName,
      };
}
