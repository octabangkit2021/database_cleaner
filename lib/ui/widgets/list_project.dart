part of 'widget.dart';

class ListProject extends StatelessWidget {
  final String? namaToko;
  final List<Database>? database;

  ListProject({this.namaToko = "Tidak ada nama", this.database});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => Modal(
                    data: database,
                  )),
          child: Container(
            height: 10.h,
            width: 96.w,
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            margin: EdgeInsets.symmetric(vertical: 1.h),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  width: 15.w,
                  height: 8.h,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: primary),
                ),
                Container(
                  width: 68.w,
                  height: 8.h,
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        namaToko ?? "-",
                        style: poppins.copyWith(
                            color: background, fontSize: 18.sp),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Modal extends StatelessWidget {
  final List<Database>? data;

  Modal({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        margin: EdgeInsets.all(2.h),
        child: ListView(
          children: data!
              .map((e) => ListTile(
                    title: Text(e.nama ?? "-"),
                    trailing: Material(
                        shape: CircleBorder(),
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () async {
                            await context
                                .read<DeleteTableCubit>()
                                .deleteTable(e.url ?? "-");
                            var state = context.read<DeleteTableCubit>().state;

                            if (state is DeleteTableSuccess) {
                              var message =
                                  (state as DeleteTableSuccess).response;
                              Get.snackbar("Berhasil", message ?? "-", snackStyle: SnackStyle.FLOATING, backgroundColor: "#ACD1AF".toColor(), colorText: Colors.white,);
                            } else {
                              var message =
                                  (state as DeleteTableFailed).message;
                              Get.snackbar("Gagal", message ?? "-", snackStyle: SnackStyle.FLOATING,backgroundColor: "#F47174".toColor(), colorText: Colors.white);
                                
                            }
                          },
                          child: Icon(
                            Icons.delete_forever_rounded,
                            size: 24.sp,
                          ),
                        )),
                  ))
              .toList(),
        ));
  }
}
