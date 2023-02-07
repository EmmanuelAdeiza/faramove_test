import 'package:faramove_test/global/global.dart';
import 'package:faramove_test/modules/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PodcastPlaying extends StatelessWidget {
  const PodcastPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackdrop(
        child: PodcastTranscript(
      body: Column(
        children: [
          const YSpace(67),
          const PodcastTopBar(title: 'Stay Motivated Ep. 1'),
          const YSpace(30),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Column(
                  children: const [
                    PodcastCover(),
                    YSpace(70),
                    PodcastDetailsAndControl(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
