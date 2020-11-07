
part of 'screens.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: VxBox(
        child: VStack([
          Titlenya(),
          Buttonya()
        ],alignment: MainAxisAlignment.center,)
      ).color(Vx.blue600).size(context.screenWidth, context.screenHeight).make()
    );
  }

  Widget title = 'Splash Screen'.text.color(Vx.white).makeCentered();
}

class Titlenya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
        delay: Duration(milliseconds: 400),
        child: 'Splash Screen'.text.color(Vx.white).makeCentered());
  }
}

class Buttonya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 800),
        child: VxBox()
        .color(Vx.white)
        .size(context.percentWidth*60, context.percentHeight*10)
        .make()
        .centered()
        .animatedBox
        .make());
  }
}
