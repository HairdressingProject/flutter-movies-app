import 'package:flutter/services.dart' show rootBundle;

class SecretsService {
  static Future<String> getAPIKey({String secretsPath = '.secrets'}) async {
    try {
      String secrets = await rootBundle.loadString(secretsPath);
      return secrets.substring(8);
    } catch (err) {
      print('Could not load secrets file');
      print(err);
    }
    return null;
  }
}
