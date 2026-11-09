import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'status_banner2_model.dart';
export 'status_banner2_model.dart';

class StatusBanner2Widget extends StatefulWidget {
  const StatusBanner2Widget({
    super.key,
    bool? isFree,
    String? message,
  })  : this.isFree = isFree ?? true,
        this.message = message ?? 'Créneau libre pour Dr Sana Ben Amor';

  final bool isFree;
  final String message;

  @override
  State<StatusBanner2Widget> createState() => _StatusBanner2WidgetState();
}

class _StatusBanner2WidgetState extends State<StatusBanner2Widget> {
  late StatusBanner2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusBanner2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          valueOrDefault<bool>(
            widget.isFree,
            true,
          )
              ? Color(0x1A249689)
              : Color(0x1AFF5963),
          Color(0x1A249689),
        ),
        borderRadius: BorderRadius.circular(16.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget.isFree,
              true,
            )
                ? Color(0x4D249689)
                : Color(0x4DFF5963),
            Color(0x4D249689),
          ),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 18.0,
                height: 18.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget.isFree,
                        true,
                      )
                          ? true
                          : false,
                      true,
                    ))
                      Icon(
                        Icons.check_circle_rounded,
                        color: valueOrDefault<Color>(
                          valueOrDefault<bool>(
                            widget.isFree,
                            true,
                          )
                              ? FlutterFlowTheme.of(context).success
                              : FlutterFlowTheme.of(context).error,
                          FlutterFlowTheme.of(context).success,
                        ),
                        size: 18.0,
                      ),
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget.isFree,
                        true,
                      )
                          ? false
                          : true,
                      false,
                    ))
                      Icon(
                        Icons.error_rounded,
                        color: valueOrDefault<Color>(
                          valueOrDefault<bool>(
                            widget.isFree,
                            true,
                          )
                              ? FlutterFlowTheme.of(context).success
                              : FlutterFlowTheme.of(context).error,
                          FlutterFlowTheme.of(context).success,
                        ),
                        size: 18.0,
                      ),
                  ],
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.message,
                  'Créneau libre pour Dr Sana Ben Amor',
                ),
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        valueOrDefault<bool>(
                          widget.isFree,
                          true,
                        )
                            ? FlutterFlowTheme.of(context).success
                            : FlutterFlowTheme.of(context).error,
                        FlutterFlowTheme.of(context).success,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
