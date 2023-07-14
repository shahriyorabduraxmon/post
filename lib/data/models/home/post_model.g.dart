// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      count: json['count'] as int?,
      next: json['next'] as String?,
      nextOffset: json['nextOffset'] as int?,
      previousOffset: json['previousOffset'] as int?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'nextOffset': instance.nextOffset,
      'previousOffset': instance.previousOffset,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int?,
      text: json['text'] as String?,
      commentCount: json['commentCount'] as int?,
      likesCount: json['likesCount'] as int?,
      isLiked: json['isLiked'] as bool?,
      isMine: json['isMine'] as bool?,
      isSaved: json['isSaved'] as bool?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      medias: (json['medias'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      repost: json['repost'],
      products: json['products'] as List<dynamic>?,
      authorUser: json['authorUser'] as String?,
      authorOrg: json['authorOrg'],
      username: json['username'] as String?,
      name: json['name'] as String?,
      lastname: json['lastname'] as String?,
      avatar: json['avatar'] as String?,
      mainCat: json['mainCat'] as String?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'commentCount': instance.commentCount,
      'likesCount': instance.likesCount,
      'isLiked': instance.isLiked,
      'isMine': instance.isMine,
      'isSaved': instance.isSaved,
      'date': instance.date?.toIso8601String(),
      'medias': instance.medias,
      'repost': instance.repost,
      'products': instance.products,
      'authorUser': instance.authorUser,
      'authorOrg': instance.authorOrg,
      'username': instance.username,
      'name': instance.name,
      'lastname': instance.lastname,
      'avatar': instance.avatar,
      'mainCat': instance.mainCat,
    };

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      id: json['id'] as int?,
      image: json['image'] as String?,
      file: json['file'] as String?,
      screenshot: json['screenshot'] as String?,
      main: json['main'] as bool?,
      type: json['type'] as String?,
      post: json['post'] as int?,
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'file': instance.file,
      'screenshot': instance.screenshot,
      'main': instance.main,
      'type': instance.type,
      'post': instance.post,
    };
