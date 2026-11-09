import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cree_compte_page_widget.dart' show CreeComptePageWidget;
import 'package:flutter/material.dart';

class CreeComptePageModel extends FlutterFlowModel<CreeComptePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomField widget.
  FocusNode? nomFieldFocusNode;
  TextEditingController? nomFieldTextController;
  String? Function(BuildContext, String?)? nomFieldTextControllerValidator;
  String? _nomFieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le nom est obligatoire (2 caractères minimum)';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 60) {
      return 'Maximum 60 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for specialiteField widget.
  FocusNode? specialiteFieldFocusNode;
  TextEditingController? specialiteFieldTextController;
  String? Function(BuildContext, String?)?
      specialiteFieldTextControllerValidator;
  String? _specialiteFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Spécialité is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 60) {
      return 'Maximum 60 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  String? _emailFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Adresse mail invalide';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passwordField widget.
  late FocusNode passwordFieldPasswordVisibilityFocusNode;
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  String? _passwordFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '16 caractères minimum';
    }

    if (val.length < 16) {
      return 'Requires at least 16 characters.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for confirmPasswordField widget.
  late FocusNode confirmPasswordFieldPasswordVisibilityFocusNode;
  FocusNode? confirmPasswordFieldFocusNode;
  TextEditingController? confirmPasswordFieldTextController;
  late bool confirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordFieldTextControllerValidator;
  String? _confirmPasswordFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '16 caractères minimum';
    }

    if (val.length < 16) {
      return 'Requires at least 16 characters.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nomFieldTextControllerValidator = _nomFieldTextControllerValidator;
    specialiteFieldTextControllerValidator =
        _specialiteFieldTextControllerValidator;
    emailFieldTextControllerValidator = _emailFieldTextControllerValidator;
    passwordFieldPasswordVisibilityFocusNode = FocusNode();
    passwordFieldVisibility = false;
    passwordFieldTextControllerValidator =
        _passwordFieldTextControllerValidator;
    confirmPasswordFieldPasswordVisibilityFocusNode = FocusNode();
    confirmPasswordFieldVisibility = false;
    confirmPasswordFieldTextControllerValidator =
        _confirmPasswordFieldTextControllerValidator;
  }

  @override
  void dispose() {
    nomFieldFocusNode?.dispose();
    nomFieldTextController?.dispose();

    specialiteFieldFocusNode?.dispose();
    specialiteFieldTextController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
    passwordFieldPasswordVisibilityFocusNode.dispose();
    confirmPasswordFieldFocusNode?.dispose();
    confirmPasswordFieldTextController?.dispose();
    confirmPasswordFieldPasswordVisibilityFocusNode.dispose();
  }
}
