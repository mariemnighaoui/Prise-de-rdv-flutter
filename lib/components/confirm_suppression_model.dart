import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_suppression_widget.dart' show ConfirmSuppressionWidget;
import 'package:flutter/material.dart';

class ConfirmSuppressionModel
    extends FlutterFlowModel<ConfirmSuppressionWidget> {
  ///  Local state fields for this component.

  RendezVousRecord? rdv;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  late FocusNode textFieldPasswordVisibilityFocusNode;
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldPasswordVisibilityFocusNode = FocusNode();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
    textFieldPasswordVisibilityFocusNode.dispose();
  }
}
