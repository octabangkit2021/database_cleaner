part of 'page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String title = "BARU PERTAMA MASUK ?";
  int height = 30;
  bool isInitialWidget = true;
  bool isLogin = true;
  bool hideWelcome = false;
  @override
  Widget build(BuildContext context) {
    return BasePage(
        content: SafeArea(
      child: Stack(
        children: [
          Container(
            height: 70.h,
            child: Column(
              children: [
                Container(
                  width: 100.w,
                  height: 10.h,
                  child: Center(
                    child: Text(
                      this.title,
                      style: GoogleFonts.roboto(
                          color: Colors.white, letterSpacing: 8, fontSize: 10),
                    ),
                  ),
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/register.png"))),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 100.w,
              height: this.height.h,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: isInitialWidget
                    ? AnimatedOpacity(duration: const Duration(milliseconds: 1000), opacity: this.hideWelcome ? 0.0 : 1.0,
                    child: initialWidget())
                    : AnimatedOpacity(duration: const Duration(milliseconds: 1000), opacity: this.isInitialWidget ? 0.0 : 1.0,
                    child: login()),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Column login() {
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 80.w,
          height: 6.h,
          child: Text(
            "TULISKAN AKUN ANDA",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        Container(
          width: 80.w,
          height: 3.h,
          child: Text(
            "Username",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          width: 80.w,
          height: 8.h,
          child: inputField(),
        ),
        SizedBox(
          height: 3.h,
        ),
        Container(
          width: 80.w,
          height: 3.h,
          child: Text(
            "Password",
            style: roboto.copyWith(fontWeight: FontWeight.w500,),
          ),
        ),
        Container(
          width: 80.w,
          height: 8.h,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: primary
                  )
                ),
                contentPadding: EdgeInsets.only(left: 10)
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 80.w,
          height: 8.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                primary: primary),
            onPressed: () {},
            child: Text("MASUK"),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          color: Colors.transparent,
          child: InkWell(
            onTap: (){},
            radius: 20,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 80.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Text("Saya Lupa Lagi Akunnya", style: poppins.copyWith(fontWeight: FontWeight.w100, fontSize: 17.sp),)),
            ),
          ),
        )
      ],
    );
  }

  Column initialWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 80.w,
          height: 8.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                primary: primary),
            onPressed: () {
              setState(() {
                height = 55;
                hideWelcome = true;
                title="TOLONG ISI SEMUA KOTAK";
              });
              new Future.delayed(const Duration(milliseconds: 400), updateUI );
            },
            child: Text("IYA NIH.."),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 80.w,
          height: 8.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                primary: secondary),
            onPressed: () {},
            child: Text("ENGGA DONG.."),
          ),
        )
      ],
    );
  }

  void updateUI(){
    setState(() {
      isInitialWidget = false;
    });
  }
}


