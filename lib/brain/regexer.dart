class RegExer {
  //Gets the src="" link of the HTML.
  RegExp _firstClean = RegExp('src\s*=\s*"(.+?)"');
  RegExp _secondClean = RegExp('"(.+?)"');
  String _cleanVideoSrc;
  int _cleanVideoSrcLength = 0;

  String regexString(List<Map<String, dynamic>> videoSrc) {
    _cleanVideoSrc = _firstClean.stringMatch(videoSrc[1]['title']).toString();
    _cleanVideoSrc = _secondClean.stringMatch(_cleanVideoSrc).toString();
    _cleanVideoSrcLength = _cleanVideoSrc.length;

    return _cleanVideoSrc.substring(1, _cleanVideoSrcLength - 1);
  }
}
