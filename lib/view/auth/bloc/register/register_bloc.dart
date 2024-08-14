import 'package:app_stream_anime/data/datasource/auth_remote_datasource.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/response/auth_response_model.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRemoteDatasource authRemoteDatasource;
  RegisterBloc(this.authRemoteDatasource) : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const _Loading());
      final result = await authRemoteDatasource.register(
        event.name,
        event.email,
        event.password,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (succes) => emit(_Success(succes)),
      );
    });
  }
}
