import 'package:DemoApp/src/model/notes.dart';
import 'package:isar/isar.dart';

Future<Isar?> openDB() async {
  if (Isar.instanceNames.isEmpty) {
    return await Isar.open([NotesSchema], inspector: true, directory: '');
  }
  return Isar.getInstance();
}

Future<void> saveNote({required Notes notes}) async {
  final isar = await openDB();
  isar?.writeTxnSync(() => isar.notes.putSync(notes));
}