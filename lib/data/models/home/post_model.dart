// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    int? count,
    String? next,
    int? nextOffset,
    int? previousOffset,
    dynamic previous,
    List<Result>? results,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
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
    String? mainCat,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Media with _$Media {
  const factory Media({
    int? id,
    String? image,
    String? file,
    String? screenshot,
    bool? main,
    String? type,
    int? post,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
