import 'package:webscrap/controller/main_screen_interface.dart';
import 'package:webscrap/controller/page_webscrap_interface.dart';

class WebScrap with ChangeNotifier{
  RegExer _regExer = RegExer();
  final _webScraper = WebScraper('https://jkanime.net/');
  List<Map<String, dynamic>> _videoName, _videoSrc;

  void fetchPage() async {
    if (await _webScraper.loadWebPage('jojos-bizarre-adventure-2012/1/')) {
      _videoName = _webScraper.getElement(
          'div#container > div#reproductor-box > div.video-header', ['class']);

//        videoSrc = webScraper.getElement(
//            'div#container > div#reproductor-box > div.play-box'
//            ' > div.server-box > center > div.CapiTcn.tab-content'
//            ' > div#video_box.tab-pane.active',
//            ['class']);
//      });

      _videoSrc = _webScraper.getElement('div#page > script', ['class']);
      notifyListeners();
    }
  }

  get getVideoSrc => _regExer.regexString(_videoSrc);
  get getVideoName => _videoName[0]['title'];
}
