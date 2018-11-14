import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';
import 'hero.dart';

class HeroSearchService {
  final Client _http;

  HeroSearchService(this._http);

  Future<List<Hero>> search(String term) async {
    try {
      final response = await _http.get('app/heroes/?name=$term');
      return (_extractData(response) as List)
          .map((json) => Hero.fromJson(json))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  dynamic _extractData(Response resp) => json.decode(resp.body)['data'];

  Exception _handleError(dynamic e) {
    return Exception('Server error; cause: $e');
  }
}
