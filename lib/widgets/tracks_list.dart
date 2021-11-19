import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../data/data.dart';
import '../models/current_song_model.dart';

class TracksList extends StatelessWidget {
  final List<Song> tracks;
  const TracksList({Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      showCheckboxColumn: false,
      dataRowHeight: 54.0,
      headingTextStyle:
          Theme.of(context).textTheme.overline!.copyWith(fontSize: 12.0),
      columns: const [
        DataColumn(label: Text('TITLE')),
        DataColumn(label: Text('ARTIST')),
        DataColumn(label: Text('ALBUM')),
        DataColumn(label: Icon(Icons.access_alarm)),
      ],
      rows: tracks.map(
        (e) {
          final selected =
              context.watch<CurrentSongModel>().selectedSong?.id == e.id;
          final textStyle = TextStyle(
              color: selected
                  ? Theme.of(context).accentColor
                  : Theme.of(context).iconTheme.color);
          return DataRow(
              cells: [
                DataCell(
                  Text(
                    e.title,
                    style: textStyle,
                  ),
                ),
                DataCell(
                  Text(
                    e.artist,
                    style: textStyle,
                  ),
                ),
                DataCell(
                  Text(
                    e.album,
                    style: textStyle,
                  ),
                ),
                DataCell(
                  Text(
                    e.duration,
                    style: textStyle,
                  ),
                ),
              ],
              selected: selected,
              onSelectChanged: (_) {
                context.read<CurrentSongModel>().select(e);
              });
        },
      ).toList(),
    );
  }
}
