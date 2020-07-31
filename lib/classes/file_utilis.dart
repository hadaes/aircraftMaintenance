import 'dart:convert';

import "package:path_provider/path_provider.dart";
import "dart:io";

class FileUtilis {
  static Future<String> get getFilePath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> get getFile async {
    final path = await getFilePath;
    return File("$path/due_dates.json");
  }

  static Future<File> saveToFile(Map<String, dynamic> data) async {
    final file = await getFile;
    try {
      String dataString = jsonEncode(data);
      return file.writeAsString(dataString);
    } catch (e) {
      print("Problem saving");
    }
    return file;
  }

  static Future<Map<String, dynamic>> readFromFile() async {
    try {
      final file = await getFile;
      String fileContents = await file.readAsString();
      Map<String, dynamic> jsonMap = jsonDecode(fileContents);
      return jsonMap;
    } catch (e) {
      print("Error loading contents");
    }
  }
}
