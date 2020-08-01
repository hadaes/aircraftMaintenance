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
    Map<String, dynamic> contents = await readFromFile();
    // Three cases to consider when writing to file.
    // 1: Nothing initalized so just write input map to file directly
    // 2: If a item tracker has writen to the file, the previous data needs
    //    to be overwritten with the new data
    // 3: If the file has data in it but not relating to the item tracker we
    //    are currently dealing with. Add a new section for it.
    if (contents == null) {
      try {
        String dataString = jsonEncode(data);
        return file.writeAsString(dataString);
      } catch (e) {
        print("Problem saving to non-initalized file");
      }
    }
    // else if (contents != null && contents.containsKey(data.keys)) {
    //   try {
    //     contents["${data.keys}"] = data[data.keys];
    //     String jsonString = jsonEncode(contents);
    //     return file.writeAsString(jsonString);
    //   } catch (e) {
    //     print("Problem overwriting contents");
    //   }
    // }
    else {
      try {
        contents.addAll(data);
        String contentString = jsonEncode(contents);
        return file.writeAsString(contentString);
      } catch (e) {
        print("Problem saving to initialized file");
      }
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
      print(e);
    }
  }
}
