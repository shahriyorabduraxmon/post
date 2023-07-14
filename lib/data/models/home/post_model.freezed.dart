// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get nextOffset => throw _privateConstructorUsedError;
  int? get previousOffset => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      int? nextOffset,
      int? previousOffset,
      dynamic previous,
      List<Result>? results});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? nextOffset = freezed,
    Object? previousOffset = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      nextOffset: freezed == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      previousOffset: freezed == previousOffset
          ? _value.previousOffset
          : previousOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$$_PostModelCopyWith(
          _$_PostModel value, $Res Function(_$_PostModel) then) =
      __$$_PostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      int? nextOffset,
      int? previousOffset,
      dynamic previous,
      List<Result>? results});
}

/// @nodoc
class __$$_PostModelCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$_PostModel>
    implements _$$_PostModelCopyWith<$Res> {
  __$$_PostModelCopyWithImpl(
      _$_PostModel _value, $Res Function(_$_PostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? nextOffset = freezed,
    Object? previousOffset = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_PostModel(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      nextOffset: freezed == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      previousOffset: freezed == previousOffset
          ? _value.previousOffset
          : previousOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModel implements _PostModel {
  const _$_PostModel(
      {this.count,
      this.next,
      this.nextOffset,
      this.previousOffset,
      this.previous,
      final List<Result>? results})
      : _results = results;

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final int? nextOffset;
  @override
  final int? previousOffset;
  @override
  final dynamic previous;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostModel(count: $count, next: $next, nextOffset: $nextOffset, previousOffset: $previousOffset, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModel &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.nextOffset, nextOffset) ||
                other.nextOffset == nextOffset) &&
            (identical(other.previousOffset, previousOffset) ||
                other.previousOffset == previousOffset) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      next,
      nextOffset,
      previousOffset,
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      __$$_PostModelCopyWithImpl<_$_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {final int? count,
      final String? next,
      final int? nextOffset,
      final int? previousOffset,
      final dynamic previous,
      final List<Result>? results}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  int? get nextOffset;
  @override
  int? get previousOffset;
  @override
  dynamic get previous;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  int? get likesCount => throw _privateConstructorUsedError;
  bool? get isLiked => throw _privateConstructorUsedError;
  bool? get isMine => throw _privateConstructorUsedError;
  bool? get isSaved => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  List<Media>? get medias => throw _privateConstructorUsedError;
  dynamic get repost => throw _privateConstructorUsedError;
  List<dynamic>? get products => throw _privateConstructorUsedError;
  String? get authorUser => throw _privateConstructorUsedError;
  dynamic get authorOrg => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get mainCat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      String? text,
      int? commentCount,
      int? likesCount,
      bool? isLiked,
      bool? isMine,
      bool? isSaved,
      DateTime? date,
      List<Media>? medias,
      dynamic repost,
      List<dynamic>? products,
      String? authorUser,
      dynamic authorOrg,
      String? username,
      String? name,
      String? lastname,
      String? avatar,
      String? mainCat});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? commentCount = freezed,
    Object? likesCount = freezed,
    Object? isLiked = freezed,
    Object? isMine = freezed,
    Object? isSaved = freezed,
    Object? date = freezed,
    Object? medias = freezed,
    Object? repost = freezed,
    Object? products = freezed,
    Object? authorUser = freezed,
    Object? authorOrg = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? lastname = freezed,
    Object? avatar = freezed,
    Object? mainCat = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMine: freezed == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      medias: freezed == medias
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      repost: freezed == repost
          ? _value.repost
          : repost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      authorUser: freezed == authorUser
          ? _value.authorUser
          : authorUser // ignore: cast_nullable_to_non_nullable
              as String?,
      authorOrg: freezed == authorOrg
          ? _value.authorOrg
          : authorOrg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCat: freezed == mainCat
          ? _value.mainCat
          : mainCat // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? text,
      int? commentCount,
      int? likesCount,
      bool? isLiked,
      bool? isMine,
      bool? isSaved,
      DateTime? date,
      List<Media>? medias,
      dynamic repost,
      List<dynamic>? products,
      String? authorUser,
      dynamic authorOrg,
      String? username,
      String? name,
      String? lastname,
      String? avatar,
      String? mainCat});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? commentCount = freezed,
    Object? likesCount = freezed,
    Object? isLiked = freezed,
    Object? isMine = freezed,
    Object? isSaved = freezed,
    Object? date = freezed,
    Object? medias = freezed,
    Object? repost = freezed,
    Object? products = freezed,
    Object? authorUser = freezed,
    Object? authorOrg = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? lastname = freezed,
    Object? avatar = freezed,
    Object? mainCat = freezed,
  }) {
    return _then(_$_Result(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMine: freezed == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      medias: freezed == medias
          ? _value._medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      repost: freezed == repost
          ? _value.repost
          : repost // ignore: cast_nullable_to_non_nullable
              as dynamic,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      authorUser: freezed == authorUser
          ? _value.authorUser
          : authorUser // ignore: cast_nullable_to_non_nullable
              as String?,
      authorOrg: freezed == authorOrg
          ? _value.authorOrg
          : authorOrg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCat: freezed == mainCat
          ? _value.mainCat
          : mainCat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.id,
      this.text,
      this.commentCount,
      this.likesCount,
      this.isLiked,
      this.isMine,
      this.isSaved,
      this.date,
      final List<Media>? medias,
      this.repost,
      final List<dynamic>? products,
      this.authorUser,
      this.authorOrg,
      this.username,
      this.name,
      this.lastname,
      this.avatar,
      this.mainCat})
      : _medias = medias,
        _products = products;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? id;
  @override
  final String? text;
  @override
  final int? commentCount;
  @override
  final int? likesCount;
  @override
  final bool? isLiked;
  @override
  final bool? isMine;
  @override
  final bool? isSaved;
  @override
  final DateTime? date;
  final List<Media>? _medias;
  @override
  List<Media>? get medias {
    final value = _medias;
    if (value == null) return null;
    if (_medias is EqualUnmodifiableListView) return _medias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic repost;
  final List<dynamic>? _products;
  @override
  List<dynamic>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? authorUser;
  @override
  final dynamic authorOrg;
  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? lastname;
  @override
  final String? avatar;
  @override
  final String? mainCat;

  @override
  String toString() {
    return 'Result(id: $id, text: $text, commentCount: $commentCount, likesCount: $likesCount, isLiked: $isLiked, isMine: $isMine, isSaved: $isSaved, date: $date, medias: $medias, repost: $repost, products: $products, authorUser: $authorUser, authorOrg: $authorOrg, username: $username, name: $name, lastname: $lastname, avatar: $avatar, mainCat: $mainCat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._medias, _medias) &&
            const DeepCollectionEquality().equals(other.repost, repost) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.authorUser, authorUser) ||
                other.authorUser == authorUser) &&
            const DeepCollectionEquality().equals(other.authorOrg, authorOrg) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.mainCat, mainCat) || other.mainCat == mainCat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      commentCount,
      likesCount,
      isLiked,
      isMine,
      isSaved,
      date,
      const DeepCollectionEquality().hash(_medias),
      const DeepCollectionEquality().hash(repost),
      const DeepCollectionEquality().hash(_products),
      authorUser,
      const DeepCollectionEquality().hash(authorOrg),
      username,
      name,
      lastname,
      avatar,
      mainCat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
      final String? text,
      final int? commentCount,
      final int? likesCount,
      final bool? isLiked,
      final bool? isMine,
      final bool? isSaved,
      final DateTime? date,
      final List<Media>? medias,
      final dynamic repost,
      final List<dynamic>? products,
      final String? authorUser,
      final dynamic authorOrg,
      final String? username,
      final String? name,
      final String? lastname,
      final String? avatar,
      final String? mainCat}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get id;
  @override
  String? get text;
  @override
  int? get commentCount;
  @override
  int? get likesCount;
  @override
  bool? get isLiked;
  @override
  bool? get isMine;
  @override
  bool? get isSaved;
  @override
  DateTime? get date;
  @override
  List<Media>? get medias;
  @override
  dynamic get repost;
  @override
  List<dynamic>? get products;
  @override
  String? get authorUser;
  @override
  dynamic get authorOrg;
  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get lastname;
  @override
  String? get avatar;
  @override
  String? get mainCat;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get screenshot => throw _privateConstructorUsedError;
  bool? get main => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get post => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? file,
      String? screenshot,
      bool? main,
      String? type,
      int? post});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? file = freezed,
    Object? screenshot = freezed,
    Object? main = freezed,
    Object? type = freezed,
    Object? post = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? file,
      String? screenshot,
      bool? main,
      String? type,
      int? post});
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? file = freezed,
    Object? screenshot = freezed,
    Object? main = freezed,
    Object? type = freezed,
    Object? post = freezed,
  }) {
    return _then(_$_Media(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      screenshot: freezed == screenshot
          ? _value.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  const _$_Media(
      {this.id,
      this.image,
      this.file,
      this.screenshot,
      this.main,
      this.type,
      this.post});

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? file;
  @override
  final String? screenshot;
  @override
  final bool? main;
  @override
  final String? type;
  @override
  final int? post;

  @override
  String toString() {
    return 'Media(id: $id, image: $image, file: $file, screenshot: $screenshot, main: $main, type: $type, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.screenshot, screenshot) ||
                other.screenshot == screenshot) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.post, post) || other.post == post));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, file, screenshot, main, type, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {final int? id,
      final String? image,
      final String? file,
      final String? screenshot,
      final bool? main,
      final String? type,
      final int? post}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get file;
  @override
  String? get screenshot;
  @override
  bool? get main;
  @override
  String? get type;
  @override
  int? get post;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}
