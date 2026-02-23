import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'asignaturas_widget.dart' show AsignaturasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AsignaturasModel extends FlutterFlowModel<AsignaturasWidget> {
  ///  Local state fields for this page.

  List<dynamic> datos = [];
  void addToDatos(dynamic item) => datos.add(item);
  void removeFromDatos(dynamic item) => datos.remove(item);
  void removeAtIndexFromDatos(int index) => datos.removeAt(index);
  void insertAtIndexInDatos(int index, dynamic item) =>
      datos.insert(index, item);
  void updateDatosAtIndex(int index, Function(dynamic) updateFn) =>
      datos[index] = updateFn(datos[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - listarAsignaturas] action in Asignaturas widget.
  List<dynamic>? listaAsignatura;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
