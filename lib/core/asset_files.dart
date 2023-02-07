// ignore_for_file: unused_element

import 'dart:math';

class ImageAssets {
  const ImageAssets();
  _png(file) => "assets/images/$file.png";
  _svg(file) => "assets/images/$file.svg";

  get avatar => _png('avatar');
  get avatarSvg => _svg('avatar');
  get bookASession => _png("book_a_session");
  get chat => _png('chat');
  get commonSymptoms => _png('common_symptoms');
  get community1 => _png('community1');
  get community2 => _png('community2');
  get diary => _png('diary');
  get fruits => _png('fruits');
  get stayInspiredPng => _png('stay_inspired');
  get stayInspiredSvg => _svg('stay_inspired');
  get virtualAssitant => _png('virtual_assistant');

  get member1 => _png('member1');
  get member2 => _png('member2');
  get member3 => _png('member3');
  get member4 => _png('member4');

  static const String dummy =
      'https://avatars.githubusercontent.com/u/36741904?s=96&v=4';
}

class IconAssets {
  const IconAssets();
  _png(file) => "assets/icons/$file.png";
  _svg(file) => "assets/icons/$file.svg";

  get forward => _svg('right_arrow');
  get caution => _svg('caution');
  get avatar => _svg('avatar');
  get message => _svg('message');
  get notification => _svg('notification');
  get search => _svg('search');
  get save => _svg('save');
  get share => _svg('share');
  get skipBackward => _svg('skip-backward');
  get skipForward => _svg('skip-forward');
  get volume => _svg('volume');
  get play => _svg('play');
  get letterbox => _svg('letterbox');
  get expand => _svg('expand');
  get member => _svg('member');
  get home => _svg('home');
  get calendar => _svg('calendar');
  get actions => _svg('actions');
  get community => _svg('community');
  get profile => _svg('profile');
}

class BgAssets {
  const BgAssets();
  _png(file) => "assets/backgrounds/$file.png";
  _svg(file) => "assets/backgrounds/$file.svg";

  get bookASession => _png('book_a_session');
  get diary => _png('diary');
  get virtualAssitant => _png('virtual_assistant');
  get confetti => _png('backdrop_bg');
  get podcastPlaying => _png('podcast_playing_bg');
  get podcastPlayingThumbnail => _png('podcast_playing_thumbnail');
  get community1 => _png('com11');
  get community2 => _png('com21');
  get community3 => _png('com31');
  get community4 => _png('com41');
  get community5 => _png('com51');
  List<String> get communityImages => [
        community1,
        community2,
        community3,
        community4,
        community5,
      ];
  get randomCommunityBg =>
      communityImages[Random().nextInt(communityImages.length)];

  get tipBg1 => _png('common_symptoms');
  get tipBg2 => _png('fruits');
  get tipBg3 => _png('things_to_avoid');
}

class AnimationAssets {
  const AnimationAssets();
  _json(file) => "assets/animations/$file.json";

  get empty1 => _json('empty1');
  get empty2 => _json('empty2');
}
