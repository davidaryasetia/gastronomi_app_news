import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerPage extends StatefulWidget {
  const YoutubePlayerPage({Key? key}) : super(key: key);

  @override
  _YTState createState() => _YTState();
}

class _YTState extends State<YoutubePlayerPage> {
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hKsc27Ex6ao',
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controller,
      aspectRatio: 16 / 9,
      builder: (context, player) {
        return Column(
          children: [
            player,
            Text('Youtube Player'),
          ],
        );
      },
    );
  }
}
