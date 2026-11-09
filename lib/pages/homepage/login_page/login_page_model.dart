import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for mail widget.
  FocusNode? mailFocusNode;
  TextEditingController? mailTextController;
  String? Function(BuildContext, String?)? mailTextControllerValidator;
  // State field(s) for mdp widget.
  late FocusNode mdpPasswordVisibilityFocusNode;
  FocusNode? mdpFocusNode;
  TextEditingController? mdpTextController;
  late bool mdpVisibility;
  String? Function(BuildContext, String?)? mdpTextControllerValidator;
  bool empreinteOk = false;

  @override
  void initState(BuildContext context) {
    mdpPasswordVisibilityFocusNode = FocusNode();
    mdpVisibility = false;
  }

  @override
  void dispose() {
    mailFocusNode?.dispose();
    mailTextController?.dispose();

    mdpFocusNode?.dispose();
    mdpTextController?.dispose();
    mdpPasswordVisibilityFocusNode.dispose();
  }
}
