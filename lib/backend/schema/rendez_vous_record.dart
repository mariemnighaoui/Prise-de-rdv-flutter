import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RendezVousRecord extends FirestoreRecord {
  RendezVousRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "patientNom" field.
  String? _patientNom;
  String get patientNom => _patientNom ?? '';
  bool hasPatientNom() => _patientNom != null;

  // "patientTelephone" field.
  String? _patientTelephone;
  String get patientTelephone => _patientTelephone ?? '';
  bool hasPatientTelephone() => _patientTelephone != null;

  // "heure" field.
  String? _heure;
  String get heure => _heure ?? '';
  bool hasHeure() => _heure != null;

  // "motif" field.
  String? _motif;
  String get motif => _motif ?? '';
  bool hasMotif() => _motif != null;

  // "medecin" field.
  String? _medecin;
  String get medecin => _medecin ?? '';
  bool hasMedecin() => _medecin != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _patientNom = snapshotData['patientNom'] as String?;
    _patientTelephone = snapshotData['patientTelephone'] as String?;
    _heure = snapshotData['heure'] as String?;
    _motif = snapshotData['motif'] as String?;
    _medecin = snapshotData['medecin'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rendez_vous');

  static Stream<RendezVousRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RendezVousRecord.fromSnapshot(s));

  static Future<RendezVousRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RendezVousRecord.fromSnapshot(s));

  static RendezVousRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RendezVousRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RendezVousRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RendezVousRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RendezVousRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RendezVousRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createRendezVousRecordData({
  String? patientNom,
  String? patientTelephone,
  String? heure,
  String? motif,
  String? medecin,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'patientNom': patientNom,
      'patientTelephone': patientTelephone,
      'heure': heure,
      'motif': motif,
      'medecin': medecin,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class RendezVousRecordDocumentEquality implements Equality<RendezVousRecord> {
  const RendezVousRecordDocumentEquality();

  @override
  bool equals(RendezVousRecord? e1, RendezVousRecord? e2) {
    return e1?.patientNom == e2?.patientNom &&
        e1?.patientTelephone == e2?.patientTelephone &&
        e1?.heure == e2?.heure &&
        e1?.motif == e2?.motif &&
        e1?.medecin == e2?.medecin &&
        e1?.date == e2?.date;
  }

  @override
  int hash(RendezVousRecord? e) => const ListEquality().hash([
        e?.patientNom,
        e?.patientTelephone,
        e?.heure,
        e?.motif,
        e?.medecin,
        e?.date
      ]);

  @override
  bool isValidKey(Object? o) => o is RendezVousRecord;
}
