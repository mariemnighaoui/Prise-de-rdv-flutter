import '/components/status_banner3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'form_section_child22_widget.dart' show FormSectionChild22Widget;
import 'package:flutter/material.dart';

class FormSectionChild22Model
    extends FlutterFlowModel<FormSectionChild22Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for StatusBanner.
  late StatusBanner3Model statusBannerModel;

  @override
  void initState(BuildContext context) {
    statusBannerModel = createModel(context, () => StatusBanner3Model());
  }

  @override
  void dispose() {
    statusBannerModel.dispose();
  }
}
