import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _emailSauvegarde =
          prefs.getString('ff_emailSauvegarde') ?? _emailSauvegarde;
    });
    _safeInit(() {
      _mdpSauvegarde = prefs.getString('ff_mdpSauvegarde') ?? _mdpSauvegarde;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _erreurAffichee = false;
  bool get erreurAffichee => _erreurAffichee;
  set erreurAffichee(bool value) {
    _erreurAffichee = value;
  }

  int _ongletRdv = 0;
  int get ongletRdv => _ongletRdv;
  set ongletRdv(int value) {
    _ongletRdv = value;
  }

  String _medecinFiltre = '';
  String get medecinFiltre => _medecinFiltre;
  set medecinFiltre(String value) {
    _medecinFiltre = value;
  }

  String _recherche = '';
  String get recherche => _recherche;
  set recherche(String value) {
    _recherche = value;
  }

  String _emailSauvegarde = '';
  String get emailSauvegarde => _emailSauvegarde;
  set emailSauvegarde(String value) {
    _emailSauvegarde = value;
    prefs.setString('ff_emailSauvegarde', value);
  }

  String _mdpSauvegarde = '';
  String get mdpSauvegarde => _mdpSauvegarde;
  set mdpSauvegarde(String value) {
    _mdpSauvegarde = value;
    prefs.setString('ff_mdpSauvegarde', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
