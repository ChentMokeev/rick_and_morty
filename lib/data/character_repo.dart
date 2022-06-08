import 'package:dio/dio.dart';

import '../model/char_model.dart';

class CharacterRepo {
  final Dio dio;

  CharacterRepo({required this.dio});

  Future<CharModel> getCharacters() async {
    final result = await dio.get('character');
    return CharModel.fromJson(result.data);
  }
}
