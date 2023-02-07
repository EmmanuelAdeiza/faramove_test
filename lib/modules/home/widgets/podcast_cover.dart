import 'package:animate_do/animate_do.dart';
import 'package:faramove_test/core/asset_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PodcastCover extends StatelessWidget {
  const PodcastCover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElasticIn(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 321.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                image: DecorationImage(
                    image:
                        AssetImage(const BgAssets().podcastPlayingThumbnail))),
            child: Center(
              child: Image.asset(
                const ImageAssets().stayInspiredPng,
                height: 60.h,
                width: 115.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
