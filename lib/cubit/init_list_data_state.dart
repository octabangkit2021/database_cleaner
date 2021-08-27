part of 'init_list_data_cubit.dart';

abstract class InitListDataState extends Equatable {
  const InitListDataState();
}

class InitListDataInitial extends InitListDataState {
  @override
  List<Object> get props => [];
}

class GetDataSuccess extends InitListDataState {
  final List<TokoModel>? data;

  GetDataSuccess(this.data);

  @override
  List<Object> get props => [data!];
}

class GetDataFailed extends InitListDataState {
  final String? message;

  GetDataFailed(this.message);

  @override
  List<Object> get props => [message!];
}