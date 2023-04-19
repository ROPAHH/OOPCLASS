List<Map<String, dynamic>> songs = [
  {'id': 1, 'title': 'Drip too hard', 'artist': 'Lil Baby', 'duration': '3:54'},
  {'id': 2, 'title': 'Pushing P', 'artist': 'Gunna', 'duration': '4:54'},
  {'id': 3, 'title': 'Mask Off', 'artist': 'Future', 'duration': '5:55'},
  {
    'id': 4,
    'title': 'Wildest Dreams',
    'artist': 'Taylor Swift',
    'duration': '6:30'
  }
];
// Find a song by index
Map<String, dynamic> findByIndex(int index) {
  return songs[index];
}

// Find songs by title
List<Map<String, dynamic>> findByTitle(String title) {
  return songs
      .where(
          (song) => song['title'].toLowerCase().contains(title.toLowerCase()))
      .toList();
}

// Find songs by artist
List<Map<String, dynamic>> findByArtist(String artist) {
  return songs
      .where(
          (song) => song['artist'].toLowerCase().contains(artist.toLowerCase()))
      .toList();
}

// Remove a song from the collection by ID
void removeSong(int id) {
  songs.removeWhere((song) => song['id'] == id);
}

// Add a song to the collection
void addSong(Map<String, dynamic> song) {
  songs.add(song);
}

void main() {
  // Find a song by index
  print(findByIndex(2));
  print('\n');
// Find songs by title
  print(findByTitle('Drip'));
  print('\n');
  // Find songs by artist
  print(findByArtist('Lil'));
  print('\n');
// Remove a song
  removeSong(2);
  print(songs);
  print('\n'); // Add a song

  Map<String, dynamic> newSong = {
    'id': 5,
    'title': 'Drivers License',
    'artist': 'Rodrigo',
    'duration': '2:05'
  };
  addSong(newSong);
  print(songs);
}
