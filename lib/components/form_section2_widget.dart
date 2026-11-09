import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_section2_model.dart';
export 'form_section2_model.dart';

class FormSection2Widget extends StatefulWidget {
  const FormSection2Widget({
    super.key,
    String? title,
    this.child,
  }) : this.title = title ?? 'Patient';

  final String title;
  final Widget Function()? child;

  @override
  State<FormSection2Widget> createState() => _FormSection2WidgetState();
}

class _FormSection2WidgetState extends State<FormSection2Widget> {
  late FormSection2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormSection2Model());
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
