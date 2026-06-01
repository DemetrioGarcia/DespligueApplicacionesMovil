import '/flutter_flow/flutter_flow_util.dart';
import 'comentar_cancion_widget.dart' show ComentarCancionWidget;
import 'package:flutter/material.dart';

class ComentarCancionModel extends FlutterFlowModel<ComentarCancionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
