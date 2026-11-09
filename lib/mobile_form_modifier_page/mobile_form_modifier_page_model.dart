import '/components/section_header_widget.dart';
import '/components/status_banner2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mobile_form_modifier_page_widget.dart'
    show MobileFormModifierPageWidget;
import 'package:flutter/material.dart';

class MobileFormModifierPageModel
    extends FlutterFlowModel<MobileFormModifierPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for StatusBanner.
  late StatusBanner2Model statusBannerModel;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    statusBannerModel = createModel(context, () => StatusBanner2Model());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    sectionHeaderModel2.dispose();
    statusBannerModel.dispose();
  }
}
