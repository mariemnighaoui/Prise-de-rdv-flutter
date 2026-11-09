import '/components/status_banner_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'form_section_child2_widget.dart' show FormSectionChild2Widget;
import 'package:flutter/material.dart';

class FormSectionChild2Model extends FlutterFlowModel<FormSectionChild2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for StatusBanner.
  late StatusBannerModel statusBannerModel;

  @override
  void initState(BuildContext context) {
    statusBannerModel = createModel(context, () => StatusBannerModel());
  }

  @override
  void dispose() {
    statusBannerModel.dispose();
  }
}
