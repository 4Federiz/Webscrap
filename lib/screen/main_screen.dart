import 'package:webscrap/controller/main_screen_interface.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final webscrapModel = Provider.of<WebScrap>(context);
    webscrapModel.fetchPage();

    return Scaffold(
      body: SafeArea(
        child: webscrapModel.getVideoName == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${webscrapModel.getVideoName}',
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      '${webscrapModel.getVideoSrc}',
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
