import '../database.dart';

class ArtistsTable extends SupabaseTable<ArtistsRow> {
  @override
  String get tableName => 'artists';

  @override
  ArtistsRow createRow(Map<String, dynamic> data) => ArtistsRow(data);
}

class ArtistsRow extends SupabaseDataRow {
  ArtistsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ArtistsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get biography => getField<String>('biography');
  set biography(String? value) => setField<String>('biography', value);

  String? get genres => getField<String>('genres');
  set genres(String? value) => setField<String>('genres', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);
}
