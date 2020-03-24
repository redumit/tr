import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.amber,
      // videoProgressIndicatorColor: Colors.amber,
      // progressColors: ProgressColors(
      //     playedColor: Colors.amber,
      //     handleColor: Colors.amberAccent,
      // ),
      // onReady () {
      //     _controller.addListener(listener);
      // },
    );
  }
}
