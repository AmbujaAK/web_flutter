import 'dart:convert' show json, utf8;
import 'dart:io';
import 'dart:async';

import 'package:isf_demo/model/project_repo_model.dart';

class ISF_API {
  static final HttpClient _httpClient = HttpClient();
  static final String _url = "api.github.com";

  static Future<List<ProjectRepoModel>> getUsersRepositories() async {
    final uri = Uri.https(_url, '/users/AmbujaAK/repos');
    
    final jsonResponse = await _getJsonFromList(uri);
    
    print(jsonResponse);
    if (jsonResponse == null) {
      return null;
    }

    return ProjectRepoModel.mapJSONStringToList(jsonResponse);
  }

  static Future<List<dynamic>> _getJsonFromList(Uri uri) async {
    try {
      final httpRequest = await _httpClient.getUrl(uri);
      final httpResponse = await httpRequest.close();
      if (httpResponse.statusCode != HttpStatus.ok) {
        return null;
      }

      final responseBody = await httpResponse.transform(utf8.decoder).join();
      print('res :: ');
      
      
      var list = json.decode(responseBody) as List;
      print(list[0]);
      
      return list;
    } on Exception catch (e) {
      print('$e');
      return null;
    }
  }

}