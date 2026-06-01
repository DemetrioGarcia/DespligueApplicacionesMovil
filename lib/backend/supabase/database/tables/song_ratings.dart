import '../database.dart';

class SongRatingsTable extends SupabaseTable<SongRatingsRow> {
  @override
  String get tableName => 'song_ratings';

  @override
  SongRatingsRow createRow(Map<String, dynamic> data) => SongRatingsRow(data);
}

class SongRatingsRow extends SupabaseDataRow {
  SongRatingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SongRatingsTable();

  String? get trackId => getField<String>('track_id');
  set trackId(String? value) => setField<String>('track_id', value);

  String? get tracksTitle => getField<String>('tracks_title');
  set tracksTitle(String? value) => setField<String>('tracks_title', value);

  String? get albumId => getField<String>('album_id');
  set albumId(String? value) => setField<String>('album_id', value);

  String? get albumTitle => getField<String>('album_title');
  set albumTitle(String? value) => setField<String>('album_title', value);

  String? get albumCoverUrl => getField<String>('album_cover_url');
  set albumCoverUrl(String? value) =>
      setField<String>('album_cover_url', value);

  String? get artistName => getField<String>('artist_name');
  set artistName(String? value) => setField<String>('artist_name', value);

  double? get avgRating => getField<double>('avg_rating');
  set avgRating(double? value) => setField<double>('avg_rating', value);

  int? get totalReviews => getField<int>('total_reviews');
  set totalReviews(int? value) => setField<int>('total_reviews', value);
}
