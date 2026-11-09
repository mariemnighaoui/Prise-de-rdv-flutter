import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'form_ajouter_une_page_widget.dart' show FormAjouterUnePageWidget;
import 'package:flutter/material.dart';

class FormAjouterUnePageModel
    extends FlutterFlowModel<FormAjouterUnePageWidget> {
  ///  Local state fields for this page.

  DateTime? dateChoisie;

  String? photoUrl;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for titreField widget.
  FocusNode? titreFieldFocusNode;
  TextEditingController? titreFieldTextController;
  String? Function(BuildContext, String?)? titreFieldTextControllerValidator;
  String? _titreFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le titre est obligatoire (3 caractères minimum)';
    }

    if (val.length < 3) {
      return '3 caractères minimum';
    }
    if (val.length > 40) {
      return '40 caractères maximum';
    }

    return null;
  }

  // State field(s) for patientField widget.
  FocusNode? patientFieldFocusNode;
  TextEditingController? patientFieldTextController;
  String? Function(BuildContext, String?)? patientFieldTextControllerValidator;
  String? _patientFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le nom du patient est obligatoire (2 caractères minimum)';
    }

    if (val.length < 2) {
      return '2 caractères minimum';
    }
    if (val.length > 30) {
      return '30 caractères maximum';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for medecinDropdown widget.
  String? medecinDropdownValue;
  FormFieldController<String>? medecinDropdownValueController;
  // State field(s) for descriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  bool isDataUploading_uploadPhoto = false;
  FFUploadedFile uploadedLocalFile_uploadPhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadPhoto = '';

  @override
  void initState(BuildContext context) {
    titreFieldTextControllerValidator = _titreFieldTextControllerValidator;
    patientFieldTextControllerValidator = _patientFieldTextControllerValidator;
  }

  @override
  void dispose() {
    titreFieldFocusNode?.dispose();
    titreFieldTextController?.dispose();

    patientFieldFocusNode?.dispose();
    patientFieldTextController?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();
  }
}
