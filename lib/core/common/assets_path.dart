class AssetsPath {
  static String _baseImgPath(String fileName) => 'assets/imgs/$fileName.png';
  // static String _baseSvgPath(String fileName) => 'assets/svgs/$fileName.svg';

  static String moviAppLogo = _baseImgPath('video-camera-32px');
  static String moviAppLogo64px = _baseImgPath('video-camera-64px');
}
