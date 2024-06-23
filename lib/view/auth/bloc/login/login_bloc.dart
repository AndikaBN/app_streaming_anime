import 'package:app_stream_anime/data/model/response/auth_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/auth_remote_datasource.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource authRemoteDatasource;
  LoginBloc(this.authRemoteDatasource) : super(_Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final result =
          await authRemoteDatasource.login(event.email, event.password);
      result.fold(
        (error) => emit(_Error(error)),
        (succes) => emit(_Success(succes)),
      );
    });
  }
}
