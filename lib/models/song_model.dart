class SongModel {
  String name;
  String artist;
  String imagePath;
  String songPath;
  bool isFavorite;

  SongModel({
    required this.name,
    required this.artist,
    required this.imagePath,
    required this.songPath,
    required this.isFavorite,
  });
}
