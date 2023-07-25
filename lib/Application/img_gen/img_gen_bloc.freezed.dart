// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'img_gen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImgGenEvent {
  String get prompt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prompt) generateImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prompt)? generateImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prompt)? generateImg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateImg value) generateImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateImg value)? generateImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateImg value)? generateImg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImgGenEventCopyWith<ImgGenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImgGenEventCopyWith<$Res> {
  factory $ImgGenEventCopyWith(
          ImgGenEvent value, $Res Function(ImgGenEvent) then) =
      _$ImgGenEventCopyWithImpl<$Res, ImgGenEvent>;
  @useResult
  $Res call({String prompt});
}

/// @nodoc
class _$ImgGenEventCopyWithImpl<$Res, $Val extends ImgGenEvent>
    implements $ImgGenEventCopyWith<$Res> {
  _$ImgGenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
  }) {
    return _then(_value.copyWith(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateImgCopyWith<$Res>
    implements $ImgGenEventCopyWith<$Res> {
  factory _$$GenerateImgCopyWith(
          _$GenerateImg value, $Res Function(_$GenerateImg) then) =
      __$$GenerateImgCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String prompt});
}

/// @nodoc
class __$$GenerateImgCopyWithImpl<$Res>
    extends _$ImgGenEventCopyWithImpl<$Res, _$GenerateImg>
    implements _$$GenerateImgCopyWith<$Res> {
  __$$GenerateImgCopyWithImpl(
      _$GenerateImg _value, $Res Function(_$GenerateImg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
  }) {
    return _then(_$GenerateImg(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateImg implements GenerateImg {
  const _$GenerateImg({required this.prompt});

  @override
  final String prompt;

  @override
  String toString() {
    return 'ImgGenEvent.generateImg(prompt: $prompt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateImg &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateImgCopyWith<_$GenerateImg> get copyWith =>
      __$$GenerateImgCopyWithImpl<_$GenerateImg>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String prompt) generateImg,
  }) {
    return generateImg(prompt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String prompt)? generateImg,
  }) {
    return generateImg?.call(prompt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String prompt)? generateImg,
    required TResult orElse(),
  }) {
    if (generateImg != null) {
      return generateImg(prompt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateImg value) generateImg,
  }) {
    return generateImg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateImg value)? generateImg,
  }) {
    return generateImg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateImg value)? generateImg,
    required TResult orElse(),
  }) {
    if (generateImg != null) {
      return generateImg(this);
    }
    return orElse();
  }
}

abstract class GenerateImg implements ImgGenEvent {
  const factory GenerateImg({required final String prompt}) = _$GenerateImg;

  @override
  String get prompt;
  @override
  @JsonKey(ignore: true)
  _$$GenerateImgCopyWith<_$GenerateImg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImgGenState {
  String get id => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<ChatMessage> get chatMessageList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImgGenStateCopyWith<ImgGenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImgGenStateCopyWith<$Res> {
  factory $ImgGenStateCopyWith(
          ImgGenState value, $Res Function(ImgGenState) then) =
      _$ImgGenStateCopyWithImpl<$Res, ImgGenState>;
  @useResult
  $Res call(
      {String id,
      bool isloading,
      bool isError,
      List<ChatMessage> chatMessageList});
}

/// @nodoc
class _$ImgGenStateCopyWithImpl<$Res, $Val extends ImgGenState>
    implements $ImgGenStateCopyWith<$Res> {
  _$ImgGenStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ImgGenStateCopyWith<$Res>
    implements $ImgGenStateCopyWith<$Res> {
  factory _$$_ImgGenStateCopyWith(
          _$_ImgGenState value, $Res Function(_$_ImgGenState) then) =
      __$$_ImgGenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool isloading,
      bool isError,
      List<ChatMessage> chatMessageList});
}

/// @nodoc
class __$$_ImgGenStateCopyWithImpl<$Res>
    extends _$ImgGenStateCopyWithImpl<$Res, _$_ImgGenState>
    implements _$$_ImgGenStateCopyWith<$Res> {
  __$$_ImgGenStateCopyWithImpl(
      _$_ImgGenState _value, $Res Function(_$_ImgGenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isloading = null,
    Object? isError = null,
    Object? chatMessageList = null,
  }) {
    return _then(_$_ImgGenState(
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

class _$_ImgGenState implements _ImgGenState {
  const _$_ImgGenState(
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
    return 'ImgGenState(id: $id, isloading: $isloading, isError: $isError, chatMessageList: $chatMessageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImgGenState &&
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
  _$$_ImgGenStateCopyWith<_$_ImgGenState> get copyWith =>
      __$$_ImgGenStateCopyWithImpl<_$_ImgGenState>(this, _$identity);
}

abstract class _ImgGenState implements ImgGenState {
  const factory _ImgGenState(
      {required final String id,
      required final bool isloading,
      required final bool isError,
      required final List<ChatMessage> chatMessageList}) = _$_ImgGenState;

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
  _$$_ImgGenStateCopyWith<_$_ImgGenState> get copyWith =>
      throw _privateConstructorUsedError;
}
