import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'type_toggle_item_model.dart';
export 'type_toggle_item_model.dart';

class TypeToggleItemWidget extends StatefulWidget {
  const TypeToggleItemWidget({
    super.key,
    bool? active,
    String? label,
  })  : this.active = active ?? true,
        this.label = label ?? 'Ordonnance';

  final bool active;
  final String label;

  @override
  State<TypeToggleItemWidget> createState() => _TypeToggleItemWidgetState();
}

class _TypeToggleItemWidgetState extends State<TypeToggleItemWidget> {
  late TypeToggleItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TypeToggleItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          valueOrDefault<bool>(
            widget.active,
            true,
          )
              ? Color(0x26007780)
              : Colors.transparent,
          Color(0x26007780),
        ),
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget.active,
              true,
            )
                ? Color(0xFF007780)
                : FlutterFlowTheme.of(context).alternate,
            Color(0xFF007780),
          ),
          width: 1.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (valueOrDefault<bool>(
            widget.active,
            true,
          ))
            Icon(
              Icons.check_rounded,
              color: Color(0xFF007780),
              size: 16.0,
            ),
          Text(
            valueOrDefault<String>(
              widget.label,
              'Ordonnance',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget.active,
                      true,
                    )
                        ? Color(0xFF007780)
                        : FlutterFlowTheme.of(context).secondaryText,
                    Color(0xFF007780),
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(width: 4.0)),
      ),
    );
  }
}
