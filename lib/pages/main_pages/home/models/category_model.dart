import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `drug_model.dart` with the code generated by Freezed
part 'category_model.freezed.dart';
// optional: Since our CategoryModel class is serializable, we must add this line.
// But if CategoryModel was not serializable, we could skip it.
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String name,
    required String url,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, Object?> json) =>
      _$CategoryModelFromJson(json);
}