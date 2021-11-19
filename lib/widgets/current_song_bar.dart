import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/models/current_song_model.dart';

class CurrentSongBar extends StatelessWidget {
  const CurrentSongBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.0,
      width: double.infinity,
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: const <Widget>[
            _SongInfo(),
            Spacer(),
            _ControlButtonColumn(),
            Spacer(),
            _TrailingControls(),
          ],
        ),
      ),
    );
  }
}

class _SongInfo extends StatelessWidget {
  const _SongInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentSongModel>().selectedSong;
    if (selected == null) return const SizedBox.shrink();
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/images/lofigirl.jpeg',
          height: 60.0,
          width: 60.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              selected.title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 4.0),
            Text(
              selected.artist,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.grey[300],
                    fontSize: 12.0,
                  ),
            ),
          ],
        ),
        const SizedBox(width: 12.0),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
      ],
    );
  }
}

class _ControlButtonColumn extends StatelessWidget {
  const _ControlButtonColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentSongModel>().selectedSong;
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              iconSize: 20.0,
              icon: const Icon(Icons.shuffle),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              iconSize: 20.0,
              icon: const Icon(Icons.skip_previous_outlined),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              iconSize: 20.0,
              icon: const Icon(Icons.play_circle_fill_outlined),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              iconSize: 20.0,
              icon: const Icon(Icons.skip_next_outlined),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              iconSize: 20.0,
              icon: const Icon(Icons.repeat),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          children: <Widget>[
            Text(
              '0:00',
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(width: 8.0),
            Container(
              height: 5.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              selected?.duration ?? '0:00',
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ],
    );
  }
}

class _TrailingControls extends StatelessWidget {
  const _TrailingControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.devices_outlined),
          iconSize: 20.0,
        ),
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_up_outlined,
              ),
            ),
            Container(
              height: 5.0,
              width: 70.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.fullscreen_outlined),
            ),
          ],
        )
      ],
    );
  }
}
