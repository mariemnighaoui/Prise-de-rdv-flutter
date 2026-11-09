import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'status_banner_model.dart';
export 'status_banner_model.dart';

class StatusBannerWidget extends StatefulWidget {
  const StatusBannerWidget({
    super.key,
    bool? available,
  }) : this.available = available ?? true;

  final bool available;

  @override
  State<StatusBannerWidget> createState() => _StatusBannerWidgetState();
}

class _StatusBannerWidgetState extends State<StatusBannerWidget> {
  late StatusBannerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusBannerModel());
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
            widget.available,
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
              widget.available,
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
                width: 20.0,
                height: 20.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget.available,
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
                            widget.available,
                            true,
                          )
                              ? FlutterFlowTheme.of(context).success
                              : FlutterFlowTheme.of(context).error,
                          FlutterFlowTheme.of(context).success,
                        ),
                        size: 20.0,
                      ),
                    if (valueOrDefault<bool>(
                      valueOrDefault<bool>(
                        widget.available,
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
                            widget.available,
                            true,
                          )
                              ? FlutterFlowTheme.of(context).success
                              : FlutterFlowTheme.of(context).error,
                          FlutterFlowTheme.of(context).success,
                        ),
                        size: 20.0,
                      ),
                  ],
                ),
              ),
              Text(
                valueOrDefault<String>(
                  valueOrDefault<bool>(
                    widget.available,
                    true,
                  )
                      ? 'Créneau libre pour \$doctor'
                      : 'Créneau déjà pris pour \$doctor',
                  'Créneau libre pour \$doctor',
                ),
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        valueOrDefault<bool>(
                          widget.available,
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
