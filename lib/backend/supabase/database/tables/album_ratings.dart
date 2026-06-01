import '../database.dart';

class AlbumRatingsTable extends SupabaseTable<AlbumRatingsRow> {
  @override
  String get tableName => 'album_ratings';

  @override
  AlbumRatingsRow createRow(Map<String, dynamic> data) => AlbumRatingsRow(data);
}

class AlbumRatingsRow extends SupabaseDataRow {
  AlbumRatingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlbumRatingsTable();

  String? get albumId => getField<String>('album_id');
  set albumId(String? value) => setField<String>('album_id', value);

  String? get albumName => getField<String>('album_name');
  set albumName(String? value) => setField<String>('album_name', value);

  double? get averageRating => getField<double>('average_rating');
  set averageRating(double? value) => setField<double>('average_rating', value);

  int? get totalReviews => getField<int>('total_reviews');
  set totalReviews(int? value) => setField<int>('total_reviews', value);
}
