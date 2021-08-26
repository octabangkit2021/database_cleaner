part of 'page.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
                    image: AssetImage("assets/logo.png"),
                    fit: BoxFit.cover
                )
            ),
          ),
          Container(
            height: 10.h,
            width: 100.w,
            margin: EdgeInsets.only(top: 8.h),
            child: Center(
              child: Text("OCTA TECH", style: GoogleFonts.roboto(color: Colors.white, letterSpacing: 8,),),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 100.w,
              height: 20.h,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("DATABASE", style: GoogleFonts.poppins(color: Colors.white, fontSize: 28.sp, letterSpacing: 5, fontWeight: FontWeight.w700 ) ,),
                    Text("CLEANER", style: GoogleFonts.poppins(color: Colors.white, fontSize: 17.sp, fontWeight: FontWeight.w200 ) ,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
