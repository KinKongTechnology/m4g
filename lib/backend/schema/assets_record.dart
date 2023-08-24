import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssetsRecord extends FirestoreRecord {
  AssetsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "AssetImage" field.
  String? _assetImage;
  String get assetImage => _assetImage ?? '';
  bool hasAssetImage() => _assetImage != null;

  // "AssetName" field.
  String? _assetName;
  String get assetName => _assetName ?? '';
  bool hasAssetName() => _assetName != null;

  // "Descriptions" field.
  String? _descriptions;
  String get descriptions => _descriptions ?? '';
  bool hasDescriptions() => _descriptions != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "Locations" field.
  String? _locations;
  String get locations => _locations ?? '';
  bool hasLocations() => _locations != null;

  // "CreatedDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  void _initializeFields() {
    _assetImage = snapshotData['AssetImage'] as String?;
    _assetName = snapshotData['AssetName'] as String?;
    _descriptions = snapshotData['Descriptions'] as String?;
    _quantity = castToType<int>(snapshotData['Quantity']);
    _locations = snapshotData['Locations'] as String?;
    _createdDate = snapshotData['CreatedDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Assets');

  static Stream<AssetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssetsRecord.fromSnapshot(s));

  static Future<AssetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssetsRecord.fromSnapshot(s));

  static AssetsRecord fromSnapshot(DocumentSnapshot snapshot) => AssetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssetsRecordData({
  String? assetImage,
  String? assetName,
  String? descriptions,
  int? quantity,
  String? locations,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AssetImage': assetImage,
      'AssetName': assetName,
      'Descriptions': descriptions,
      'Quantity': quantity,
      'Locations': locations,
      'CreatedDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssetsRecordDocumentEquality implements Equality<AssetsRecord> {
  const AssetsRecordDocumentEquality();

  @override
  bool equals(AssetsRecord? e1, AssetsRecord? e2) {
    return e1?.assetImage == e2?.assetImage &&
        e1?.assetName == e2?.assetName &&
        e1?.descriptions == e2?.descriptions &&
        e1?.quantity == e2?.quantity &&
        e1?.locations == e2?.locations &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(AssetsRecord? e) => const ListEquality().hash([
        e?.assetImage,
        e?.assetName,
        e?.descriptions,
        e?.quantity,
        e?.locations,
        e?.createdDate
      ]);

  @override
  bool isValidKey(Object? o) => o is AssetsRecord;
}
