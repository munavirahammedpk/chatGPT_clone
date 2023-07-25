// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat_gpt/Application/generate_respo/generate_response_bloc.dart'
    as _i5;
import 'package:chat_gpt/Application/img_gen/img_gen_bloc.dart' as _i6;
import 'package:chat_gpt/Domain/chat_service.dart' as _i3;
import 'package:chat_gpt/Infrastructure/chat_impli.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiCalls>(() => _i4.ChatImplementation());
    gh.factory<_i5.GenerateResponseBloc>(
        () => _i5.GenerateResponseBloc(gh<_i3.ApiCalls>()));
    gh.factory<_i6.ImgGenBloc>(() => _i6.ImgGenBloc(gh<_i3.ApiCalls>()));
    return this;
  }
}
