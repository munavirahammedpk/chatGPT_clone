// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_response_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GenerateResponseEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) generateResp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? generateResp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? generateResp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateResp value) generateResp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateResp value)? generateResp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateResp value)? generateResp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenerateResponseEventCopyWith<GenerateResponseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateResponseEventCopyWith<$Res> {
  factory $GenerateResponseEventCopyWith(GenerateResponseEvent value,
          $Res Function(GenerateResponseEvent) then) =
      _$GenerateResponseEventCopyWithImpl<$Res, GenerateResponseEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$GenerateResponseEventCopyWithImpl<$Res,
        $Val extends GenerateResponseEvent>
    implements $GenerateResponseEventCopyWith<$Res> {
  _$GenerateResponseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateRespCopyWith<$Res>
    implements $GenerateResponseEventCopyWith<$Res> {
  factory _$$GenerateRespCopyWith(
          _$GenerateResp value, $Res Function(_$GenerateResp) then) =
      __$$GenerateRespCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$GenerateRespCopyWithImpl<$Res>
    extends _$GenerateResponseEventCopyWithImpl<$Res, _$GenerateResp>
    implements _$$GenerateRespCopyWith<$Res> {
  __$$GenerateRespCopyWithImpl(
      _$GenerateResp _value, $Res Function(_$GenerateResp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GenerateResp(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateResp implements GenerateResp {
  const _$GenerateResp({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'GenerateResponseEvent.generateResp(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateResp &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateRespCopyWith<_$GenerateResp> get copyWith =>
      __$$GenerateRespCopyWithImpl<_$GenerateResp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) generateResp,
  }) {
    return generateResp(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? generateResp,
  }) {
    return generateResp?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? generateResp,
    required TResult orElse(),
  }) {
    if (generateResp != null) {
      return generateResp(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateResp value) generateResp,
  }) {
    return generateResp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateResp value)? generateResp,
  }) {
    return generateResp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateResp value)? generateResp,
    required TResult orElse(),
  }) {
    if (generateResp != null) {
      return generateResp(this);
    }
    return orElse();
  }
}

abstract class GenerateResp implements GenerateResponseEvent {
  const factory GenerateResp({required final String query}) = _$GenerateResp;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$GenerateRespCopyWith<_$GenerateResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenerateResponseState {
  String get id => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<ChatMessage> get chatMessageList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenerateResponseStateCopyWith<GenerateResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateResponseStateCopyWith<$Res> {
  factory $GenerateResponseStateCopyWith(GenerateResponseState value,
          $Res Function(GenerateResponseState) then) =
      _$GenerateResponseStateCopyWithImpl<$Res, GenerateResponseState>;
  @useResult
  $Res call(
      {String id,
      bool isloading,
      bool isError,
      List<ChatMessage> chatMessageList});
}

/// @nodoc
class _$GenerateResponseStateCopyWithImpl<$Res,
        $Val extends GenerateResponseState>
    implements $GenerateResponseStateCopyWith<$Res> {
  _$GenerateResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isloading = null,
    Object? isError = null,
    Object? chatMessageList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      chatMessageList: null == chatMessageList
          ? _value.chatMessageList
          : chatMessageList // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenerateResponseStateCopyWith<$Res>
    implements $GenerateResponseStateCopyWith<$Res> {
  factory _$$_GenerateResponseStateCopyWith(_$_GenerateResponseState value,
          $Res Function(_$_GenerateResponseState) then) =
      __$$_GenerateResponseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool isloading,
      bool isError,
      List<ChatMessage> chatMessageList});
}

/// @nodoc
class __$$_GenerateResponseStateCopyWithImpl<$Res>
    extends _$GenerateResponseStateCopyWithImpl<$Res, _$_GenerateResponseState>
    implements _$$_GenerateResponseStateCopyWith<$Res> {
  __$$_GenerateResponseStateCopyWithImpl(_$_GenerateResponseState _value,
      $Res Function(_$_GenerateResponseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isloading = null,
    Object? isError = null,
    Object? chatMessageList = null,
  }) {
    return _then(_$_GenerateResponseState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      chatMessageList: null == chatMessageList
          ? _value._chatMessageList
          : chatMessageList // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$_GenerateResponseState implements _GenerateResponseState {
  const _$_GenerateResponseState(
      {required this.id,
      required this.isloading,
      required this.isError,
      required final List<ChatMessage> chatMessageList})
      : _chatMessageList = chatMessageList;

  @override
  final String id;
  @override
  final bool isloading;
  @override
  final bool isError;
  final List<ChatMessage> _chatMessageList;
  @override
  List<ChatMessage> get chatMessageList {
    if (_chatMessageList is EqualUnmodifiableListView) return _chatMessageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatMessageList);
  }

  @override
  String toString() {
    return 'GenerateResponseState(id: $id, isloading: $isloading, isError: $isError, chatMessageList: $chatMessageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateResponseState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._chatMessageList, _chatMessageList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isloading, isError,
      const DeepCollectionEquality().hash(_chatMessageList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateResponseStateCopyWith<_$_GenerateResponseState> get copyWith =>
      __$$_GenerateResponseStateCopyWithImpl<_$_GenerateResponseState>(
          this, _$identity);
}

abstract class _GenerateResponseState implements GenerateResponseState {
  const factory _GenerateResponseState(
          {required final String id,
          required final bool isloading,
          required final bool isError,
          required final List<ChatMessage> chatMessageList}) =
      _$_GenerateResponseState;

  @override
  String get id;
  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  List<ChatMessage> get chatMessageList;
  @override
  @JsonKey(ignore: true)
  _$$_GenerateResponseStateCopyWith<_$_GenerateResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}
