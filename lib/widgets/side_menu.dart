import 'package:flutter/material.dart';
import 'package:spotify_clone/data/data.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      height: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/spotify.png',
                  height: 55.0,
                  filterQuality: FilterQuality.high,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ],
          ),
          SideMenuIconButton(
            iconData: Icons.home,
            title: 'Home',
            onTap: () {},
          ),
          SideMenuIconButton(
            iconData: Icons.search,
            title: 'Search',
            onTap: () {},
          ),
          SideMenuIconButton(
            iconData: Icons.audiotrack,
            title: 'Radio',
            onTap: () {},
          ),
          const SizedBox(
            height: 16.0,
          ),
          _SideMenuPlaylist(),
        ],
      ),
    );
  }
}

class SideMenuIconButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final void Function() onTap;
  const SideMenuIconButton({
    required this.iconData,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 28.0,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}

class _SideMenuPlaylist extends StatefulWidget {
  const _SideMenuPlaylist({Key? key}) : super(key: key);

  @override
  __SideMenuPlaylistState createState() => __SideMenuPlaylistState();
}

class __SideMenuPlaylistState extends State<_SideMenuPlaylist> {
  ScrollController? controller;

  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        controller: controller,
        child: ListView(
          controller: controller,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Text(
                    'YOUR LIBRARY',
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ...yourLibrary
                    .map(
                      (e) => ListTile(
                        title: Text(
                          e,
                          style: Theme.of(context).textTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Text(
                    'YOUR PLAYLISTS',
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ...playlists
                    .map(
                      (e) => ListTile(
                        title: Text(
                          e,
                          style: Theme.of(context).textTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
