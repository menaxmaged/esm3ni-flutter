import 'core/utils/helper.dart';

//const force_cupertino = true;
void main() {
  runApp(Esm3niCupertino());
  /*
  if (kIsWeb) {
    runApp(Esm3niMaterial(appName: appName));
  } else if (Platform.isIOS || Platform.isMacOS) {
    if (force_cupertino) {
      runApp(Esm3niCupertino());
    } else {
      runApp(Esm3niMaterial(appName: appName));
    }
  } else {
    if (force_cupertino) {
      runApp(Esm3niCupertino( ));
    } else {
      runApp(Esm3niMaterial(appName: appName));
    }
  }
*/
}

class Esm3niCupertino extends StatelessWidget {
  const Esm3niCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: appName,
      theme: mytheme(context),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
