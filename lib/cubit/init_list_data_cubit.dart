import 'package:bloc/bloc.dart';
import 'package:database_cleaner/models/toko_model.dart';
import 'package:database_cleaner/services/services.dart';
import 'package:equatable/equatable.dart';

part 'init_list_data_state.dart';

class InitListDataCubit extends Cubit<InitListDataState> {
  InitListDataCubit() : super(InitListDataInitial());

  Future<void> getListToko() async {
    var response = await HomeServices.getListToko();
    if (response.value != null) {
      emit(GetDataSuccess(response.value));
    } else {
      emit(GetDataFailed(response.message));
    }
  }
}
