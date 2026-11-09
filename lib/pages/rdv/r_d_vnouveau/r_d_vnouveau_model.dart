import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'r_d_vnouveau_widget.dart' show RDVnouveauWidget;
import 'package:flutter/material.dart';

class RDVnouveauModel extends FlutterFlowModel<RDVnouveauWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  String? _nomTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le nom du patient est obligatoire';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneTextController;
  String? Function(BuildContext, String?)? telephoneTextControllerValidator;
  String? _telephoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le telephone  est obligatoire';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[0-9]{8}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for motif widget.
  FocusNode? motifFocusNode;
  TextEditingController? motifTextController;
  String? Function(BuildContext, String?)? motifTextControllerValidator;
  String? _motifTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Motif est obligatoire';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nomTextControllerValidator = _nomTextControllerValidator;
    telephoneTextControllerValidator = _telephoneTextControllerValidator;
    motifTextControllerValidator = _motifTextControllerValidator;
  }

  @override
  void dispose() {
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();

    motifFocusNode?.dispose();
    motifTextController?.dispose();
  }
}
