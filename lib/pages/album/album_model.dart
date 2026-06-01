import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/app_bar/app_bar_widget.dart';
import '/index.dart';
import 'album_widget.dart' show AlbumWidget;
import 'package:flutter/material.dart';

class AlbumModel extends FlutterFlowModel<AlbumWidget> {
  ///  Local state fields for this page.

  bool fav = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Album widget.
  List<TracksRow>? canciones;
  // Stores action output result for [Backend Call - Query Rows] action in Album widget.
  List<AlbumRatingsRow>? albumRating;
  // Stores action output result for [Backend Call - Query Rows] action in Album widget.
  List<ReviewsFullRow>? reviews;
  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
  }
}
