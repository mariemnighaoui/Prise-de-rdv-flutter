import '/components/status_banner3_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_section_child22_model.dart';
export 'form_section_child22_model.dart';

class FormSectionChild22Widget extends StatefulWidget {
  const FormSectionChild22Widget({super.key});

  @override
  State<FormSectionChild22Widget> createState() =>
      _FormSectionChild22WidgetState();
}

class _FormSectionChild22WidgetState extends State<FormSectionChild22Widget> {
  late FormSectionChild22Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormSectionChild22Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FlutterFlowDropDown<String>(
          controller: _model.dropdownValueController ??=
              FormFieldController<String>(
            _model.dropdownValue ??= 'Dr Sana Ben Amor',
          ),
          options: ['Dr Sana Ben Amor', 'Dr Ahmed Zaki', 'Dr Leila Slim'],
          onChanged: (val) => safeSetState(() => _model.dropdownValue = val),
          width: 200.0,
          height: 40.0,
          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.4,
              ),
          hintText: 'Dr Sana Ben Amor',
          icon: Icon(
            Icons.arrow_drop_down_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 2.0,
          borderColor: FlutterFlowTheme.of(context).alternate,
          borderWidth: 1.0,
          borderRadius: 16.0,
          margin: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          hidesUnderline: true,
          isOverButton: false,
          isSearchable: false,
          isMultiSelect: false,
          labelText: 'Médecin',
          labelTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
        wrapWithModel(
          model: _model.statusBannerModel,
          updateCallback: () => safeSetState(() {}),
          child: StatusBanner3Widget(
            isFree: true,
            message: 'Créneau libre pour Dr Sana Ben Amor',
          ),
        ),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}
