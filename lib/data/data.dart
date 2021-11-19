const yourLibrary = [
  'Made for you',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts',
];

const playlists = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'Lofi hip hop music - beats to relax/study to',
  'Vibes right now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Bollywood Lofi',
  'Sleepy Doge'
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });
}

final _lofiHipHop = [
  Song(
    id: '0',
    title: 'Blue Bird',
    artist: 'Per Fredrik Åsly',
    album: 'Naruto Shippuden - OST',
    duration: '2:17',
  ),
  Song(
    id: '1',
    title: 'Yellow',
    artist: 'Coldplay',
    album: 'Parachutes',
    duration: '4:26',
  ),
  Song(
    id: '2',
    title: 'Wake Me up When September Ends',
    artist: 'Green Day',
    album: 'American Idiot',
    duration: '4:45',
  ),
  Song(
    id: '3',
    title: 'Counting Stars',
    artist: 'One Republic',
    album: 'Native',
    duration: '4:17',
  ),
  Song(
    id: '4',
    title: 'Hey, Soul Sister',
    artist: 'Train',
    album: 'Save Me, San Francisco',
    duration: '3:36',
  ),
  Song(
    id: '5',
    title: 'Boulevard of Broken Dreams',
    artist: 'Green Day',
    album: 'Greatest Hits: God\'s favorite band',
    duration: '4:22',
  )
];

class Playlist {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  Playlist({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.creator,
    required this.duration,
    required this.followers,
    required this.songs,
  });
}

final playList = Playlist(
  id: 'P01',
  name: 'My PlayList - Songs I listen to for inspiration',
  imageUrl: 'assets/images/lofigirl.jpeg',
  description: 'Lay back and chill to this playlist',
  creator: 'Sayantan Dasgupta',
  duration: '21 min',
  followers: '402,892',
  songs: _lofiHipHop,
);
