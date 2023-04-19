// ignore_for_file: unused_field

class Song {
  late int _id;
  late String _title;
  late String _artist;

  Song(this._id, this._title, this._artist);

// constructor

  Song.fromMap(Map<String, dynamic> map)
      : _id = map['id'],
        _title = map['title'],
        _artist = map['artist'];

  int get id => _id;
  set id(int value) => _id = value;

  String get title => _title;
  set title(String value) => _title = value;

  String get artist => _artist;
  set artist(String value) => _artist = value;

  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'title': _title,
      'artist': _artist,
    };
  }
}

void main() {
  List<Song> songs = [
    Song(1, 'Top off', 'Gunna'),
    Song(2, 'Dandelions', 'Rth B'),
    Song(3, 'Thunder', 'Imagine Dragons'),
    Song(4, 'Hello', 'Adele'),
  ];
// Add a new song
  songs.add(Song(5, 'Savage', 'Megan Thee Stallion'));

// Print all songs

  for (var song in songs) {
    print('${song.id}: ${song.title} - ${song.artist}');
  }
}
