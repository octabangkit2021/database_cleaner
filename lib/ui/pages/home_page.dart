part of 'page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(content: SafeArea(
      child: Stack(
       children: [
         Container(
           height: 30.h,
           width: 100.w,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("assets/home_head.png")
             )
           ),
         ),
         Container(
           height: 20.h,
           width: 100.w,
           padding: EdgeInsets.only(left: 20),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("Selamat Datang", style: poppins.copyWith(fontWeight: FontWeight.w700, fontSize: 20.sp),),
               Text("Octavian", style: poppins.copyWith(fontWeight: FontWeight.w300, fontSize: 20.sp),),
             ],
           ),
         ),
         Container(
           width: 100.w,
           height: 6.h,
           color: Colors.grey,
           margin: EdgeInsets.only(top: 30.h),
           padding: EdgeInsets.symmetric(horizontal: 2.h),
           child: Text("Silahkan Pilih Project", style: poppins.copyWith(color: Colors.white, fontSize: 18.sp),),
         ),
         Container(
           width: 100.w,
           height: 64.h,
           color: Colors.grey,
           margin: EdgeInsets.only(top: 36.h),
           padding: EdgeInsets.symmetric(horizontal: 2.h),
           child: Column(
             children: [
               Container(
                 height: 10.h,
                 width: 96.w,
                 padding: EdgeInsets.symmetric(horizontal: 2.h),
                 color: Colors.white,
                 child: Row(
                   children: [
                     Container(
                       width: 15.w,
                       height: 8.h,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: primary
                       ),
                     ),
                     Container(
                       width: 71.w,
                       height: 8.h,
                       padding: EdgeInsets.symmetric(horizontal: 2.h),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Silahkan Pilih Project", style: poppins.copyWith(color: background, fontSize: 18.sp),),
                         ],
                       ),
                     ),
                   ],
                 ),
               )
             ],
           ),
         )
       ],
      ),
    ));
  }
}
