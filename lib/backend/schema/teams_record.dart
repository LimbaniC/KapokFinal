import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'teams_record.g.dart';

abstract class TeamsRecord implements Built<TeamsRecord, TeamsRecordBuilder> {
  static Serializer<TeamsRecord> get serializer => _$teamsRecordSerializer;

  @BuiltValueField(wireName: 'TeamName')
  String? get teamName;

  @BuiltValueField(wireName: 'TEAMid')
  String? get tEAMid;

  @BuiltValueField(wireName: 'Members')
  BuiltList<DocumentReference>? get members;

  @BuiltValueField(wireName: 'Location')
  String? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TeamsRecordBuilder builder) => builder
    ..teamName = ''
    ..tEAMid = ''
    ..members = ListBuilder()
    ..location = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Teams');

  static Stream<TeamsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TeamsRecord._();
  factory TeamsRecord([void Function(TeamsRecordBuilder) updates]) =
      _$TeamsRecord;

  static TeamsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTeamsRecordData({
  String? teamName,
  String? tEAMid,
  String? location,
}) {
  final firestoreData = serializers.toFirestore(
    TeamsRecord.serializer,
    TeamsRecord(
      (t) => t
        ..teamName = teamName
        ..tEAMid = tEAMid
        ..members = null
        ..location = location,
    ),
  );

  return firestoreData;
}
