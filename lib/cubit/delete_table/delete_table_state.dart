part of 'delete_table_cubit.dart';

abstract class DeleteTableState extends Equatable {
  const DeleteTableState();
}

class DeleteTableInitial extends DeleteTableState {
  @override
  List<Object> get props => [];
}

class DeleteTableSuccess extends DeleteTableState {
  final String? response;

  DeleteTableSuccess(this.response);

  @override
  List<Object> get props => [response!];
}

class DeleteTableFailed extends DeleteTableState {
  final String? message;

  DeleteTableFailed(this.message);

  @override
  List<Object> get props => [message!];
}
