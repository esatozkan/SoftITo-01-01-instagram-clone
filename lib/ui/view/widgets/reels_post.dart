import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsPost extends StatefulWidget {
  const ReelsPost({super.key});

  @override
  State<ReelsPost> createState() => _ReelsPostState();
}

class _ReelsPostState extends State<ReelsPost> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4');

    _videoPlayerController.addListener(() {
      setState(() {});
    });
    _videoPlayerController.setLooping(true);
    _videoPlayerController.initialize().then((_) => setState(() {}));
    _videoPlayerController.play();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: _videoPlayerController.value.aspectRatio,
        );
      },
    );
  }
}
