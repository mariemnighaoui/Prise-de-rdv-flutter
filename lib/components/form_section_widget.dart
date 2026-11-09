import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_section_model.dart';
export 'form_section_model.dart';

class FormSectionWidget extends StatefulWidget {
  const FormSectionWidget({
    super.key,
    String? title,
    this.child,
  }) : this.title = title ?? 'Patient';

  final String title;
  final Widget Function()? child;

  @override
  State<FormSectionWidget> createState() => _FormSectionWidgetState();
}

class _FormSectionWidgetState extends State<FormSectionWidget> {
  late FormSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormSectionModel());
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
        Text(
          valueOrDefault<String>(
            widget.title,
            'Patient',
          ),
          style: FlutterFlowTheme.of(context).titleSmall.override(
                font: GoogleFonts.interTight(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primary,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
              ),
        ),
        Builder(builder: (_) {
          return widget.child != null ? widget.child!() : SizedBox.shrink();
        }),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}
