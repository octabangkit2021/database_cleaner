import 'package:database_cleaner/services/services.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'delete_table_state.dart';

class DeleteTableCubit extends Cubit<DeleteTableState> {
  DeleteTableCubit() : super(DeleteTableInitial());

  Future<void> deleteTable(String url) async {
    var response = await HomeServices.deleteTable(url);
    if (response.value != null) {
      emit(DeleteTableSuccess(response.value));
    } else {
      emit(DeleteTableFailed(response.message));
    }
  }
}