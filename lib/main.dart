import 'package:webscrap/controller/main_screen_interface.dart';
import 'package:webscrap/screen/main_screen.dart';

void main() => runApp(
      ChangeNotifierProvider<WebScrap>(
          create: (_) => WebScrap(),
          child: WebScraperApp(),
        ),
    );

class WebScraperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: MainScreen(),
    );
  }
}