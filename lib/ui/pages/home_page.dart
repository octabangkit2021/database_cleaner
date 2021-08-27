part of 'page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        content: SafeArea(
      child: Stack(
        children: [
          Container(
            height: 30.h,
            width: 100.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/home_head.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 20.h,
            width: 100.w,
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Selamat Datang",
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w700, fontSize: 20.sp),
                ),
                Text(
                  "Octavian",
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w300, fontSize: 20.sp),
                ),
              ],
            ),
          ),
          Container(
            width: 100.w,
            height: 6.h,
            margin: EdgeInsets.only(top: 30.h),
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Text(
              "Silahkan Pilih Project",
              style: poppins.copyWith(color: Colors.white, fontSize: 18.sp),
            ),
          ),
          Container(
            width: 100.w,
            height: 64.h,
            margin: EdgeInsets.only(top: 36.h),
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: BlocBuilder<InitListDataCubit, InitListDataState>(
              builder: (context, state) {
                if (state is GetDataSuccess) {
                  var data = (state as GetDataSuccess).data;
                  if (data != null) {
                    return ListView(
                      children: data.map((e) => ListProject(namaToko: e.namaToko, database: e.database,)).toList(),
                    );
                  } else {
                    return Center(child: Text("Data Kosong"));
                  }
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          )
        ],
      ),
    ));
  }
}
