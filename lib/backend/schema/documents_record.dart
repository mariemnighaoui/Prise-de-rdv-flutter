import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentsRecord extends FirestoreRecord {
  DocumentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "titre" field.
  String? _titre;
  String get titre => _titre ?? '';
  bool hasTitre() => _titre != null;

  // "patientNom" field.
  String? _patientNom;
  String get patientNom => _patientNom ?? '';
  bool hasPatientNom() => _patientNom != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "medecin" field.
  String? _medecin;
  String get medecin => _medecin ?? '';
  bool hasMedecin() => _medecin != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photoUrl" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _titre = snapshotData['titre'] as String?;
    _patientNom = snapshotData['patientNom'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _medecin = snapshotData['medecin'] as String?;
    _description = snapshotData['description'] as String?;
    _photoUrl = snapshotData['photoUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documents');

  static Stream<DocumentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentsRecord.fromSnapshot(s));

  static Future<DocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentsRecord.fromSnapshot(s));

  static DocumentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createDocumentsRecordData({
  String? type,
  String? titre,
  String? patientNom,
  DateTime? date,
  String? medecin,
  String? description,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'titre': titre,
      'patientNom': patientNom,
      'date': date,
      'medecin': medecin,
      'description': description,
      'photoUrl': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentsRecordDocumentEquality implements Equality<DocumentsRecord> {
  const DocumentsRecordDocumentEquality();

  @override
  bool equals(DocumentsRecord? e1, DocumentsRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.titre == e2?.titre &&
        e1?.patientNom == e2?.patientNom &&
        e1?.date == e2?.date &&
        e1?.medecin == e2?.medecin &&
        e1?.description == e2?.description &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(DocumentsRecord? e) => const ListEquality().hash([
        e?.type,
        e?.titre,
        e?.patientNom,
        e?.date,
        e?.medecin,
        e?.description,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is DocumentsRecord;
}
