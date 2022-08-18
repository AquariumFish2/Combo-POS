import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:provider/provider.dart';

class OrderNoteController extends ChangeNotifier {
  List<String> notes = [];
  List<String> temp = [];

  setTemp() {
    temp = notes;
  }

  clearNotes() {
    notes = [];
    notifyListeners();
  }

  addNote(String note) {
    if (note.isNotEmpty) {
      notes.add(note);
      print(notes);
      notifyListeners();
    }
  }

  onQuitingWithoutSaving(BuildContext context) {
    notes = temp;
    context.read<HomeController>().toggleOrderNotesPopup();
  }

  onSave(BuildContext context) {
    context.read<HomeController>().toggleOrderNotesPopup();
  }
}
