import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeVideoWidget extends StatefulWidget {
  const YouTubeVideoWidget({super.key});

  @override
  State<YouTubeVideoWidget> createState() => _YouTubeVideoWidgetState();
}

class _YouTubeVideoWidgetState extends State<YouTubeVideoWidget> {
  late final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: _videoID(),
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: YoutubePlayer(
          controller: _controller, showVideoProgressIndicator: true),
    );
  }
}

String _videoID() {
  const link =
      "https://www.youtube.com/watch?v=0SEDKDBK1cM&ab_channel=XurshidRasulov";
  String? videoId;
  videoId = YoutubePlayer.convertUrlToId(link);
  log("VideoID: $videoId");
  return videoId ?? "Error VideoID";
}
