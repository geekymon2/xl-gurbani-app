import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final log = Logger('HomePage');

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  //final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    // ambiguate(WidgetsBinding.instance)!.addObserver(this);
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(statusBarColor: Colors.black),
    // );
    //_init();
  }

  // Future<void> _init() async {
  //   // Inform the operating system of our app's audio attributes etc.
  //   // We pick a reasonable default for an app that plays speech.
  //   final session = await AudioSession.instance;
  //   await session.configure(const AudioSessionConfiguration.speech());
  //   // Listen to errors during playback.
  //   _player.playbackEventStream.listen(
  //     (event) {},
  //     onError: (Object e, StackTrace stackTrace) {
  //       log.severe('A stream error occurred: $e');
  //     },
  //   );
  //   // Try to load audio from a source and catch any errors.
  //   try {
  //     // AAC example: https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.aac
  //     await _player.setAudioSource(
  //       AudioSource.uri(
  //         Uri.parse(
  //           "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3",
  //         ),
  //       ),
  //     );
  //   } on PlayerException catch (e) {
  //     log.severe("Error loading audio source: $e");
  //   }
  // }

  // @override
  // void dispose() {
  //   ambiguate(WidgetsBinding.instance)!.removeObserver(this);
  //   // Release decoders and buffers back to the operating system making them
  //   // available for other apps to use.
  //   _player.dispose();
  //   super.dispose();
  // }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.paused) {
  //     // Release the player's resources when not in use. We use "stop" so that
  //     // if the app resumes later, it will still remember what position to
  //     // resume from.
  //     _player.stop();
  //   }
  // }

  /// Collects the data useful for displaying in a seek bar, using a handy
  /// feature of rx_dart to combine the 3 streams of interest into one.
  // Stream<PositionData> get _positionDataStream =>
  //     Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
  //       _player.positionStream,
  //       _player.bufferedPositionStream,
  //       _player.durationStream,
  //       (position, bufferedPosition, duration) =>
  //           PositionData(position, bufferedPosition, duration ?? Duration.zero),
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('XL Radio Gurbani')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display play/pause button and volume/speed sliders.
            //ControlButtons(_player),
            // Display seek bar. Using StreamBuilder, this widget rebuilds
            // each time the position, buffered position or duration changes.
            // StreamBuilder<PositionData>(
            //   stream: _positionDataStream,
            //   builder: (context, snapshot) {
            //     final positionData = snapshot.data;
            //     return SeekBar(
            //       duration: positionData?.duration ?? Duration.zero,
            //       position: positionData?.position ?? Duration.zero,
            //       bufferedPosition:
            //           positionData?.bufferedPosition ?? Duration.zero,
            //       onChangeEnd: _player.seek,
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
