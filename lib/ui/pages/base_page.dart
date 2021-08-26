part of 'page.dart';


class BasePage extends StatelessWidget {
  final Widget content;

  BasePage({ required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: background,
              image: DecorationImage(
                image: AssetImage("assets/background.png")
              )
            ),
          ),
          Container(
            width: 100.w,
            height: 100.h,
            child: content,
          )
        ],
      ),
    );
  }
}
