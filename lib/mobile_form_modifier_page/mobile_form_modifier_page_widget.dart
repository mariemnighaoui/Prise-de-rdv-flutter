import '/components/section_header_widget.dart';
import '/components/status_banner2_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mobile_form_modifier_page_model.dart';
export 'mobile_form_modifier_page_model.dart';

/// Mobile form screen "Modifier le rendez-vous" for the medical clinic app
/// MediRDV, Material 3 style, primary color teal (#00747F), very light
/// teal-white background, outlined text fields with floating labels, French
/// labels.
///
/// This is the same layout as the "Nouveau rendez-vous" form, but every field
/// is pre-filled with the existing appointment.
///
/// AppBar with a back arrow and the title "Modifier le rendez-vous".
///
/// Section "Patient":
/// - "Nom du patient" pre-filled with "Melek Boukhris" (person icon)
/// - "Téléphone" pre-filled with "+216 20 123 456" (phone icon, numeric
/// keyboard)
///
/// Section "Rendez-vous":
/// - DropdownMenu "Médecin" pre-selected with "Dr Sana Ben Amor"
/// - On the same row: "Date" pre-filled with 13/10/2026 (calendar icon,
/// showDatePicker) and "Heure" pre-filled with 09:30 (clock icon,
/// showTimePicker)
/// - A banner under them: green "Créneau libre pour Dr Sana Ben Amor" when
/// the slot is free, red "Créneau déjà pris" when it is not
/// - Multiline "Motif" pre-filled with "Fièvre et toux depuis 3 jours"
///
/// Validation: all fields are required with a red inline error "Ce champ est
/// obligatoire" when empty; the date cannot be in the past.
///
/// Bottom, fixed: a full-width rounded FilledButton in teal "Enregistrer les
/// modifications".
class MobileFormModifierPageWidget extends StatefulWidget {
  const MobileFormModifierPageWidget({super.key});

  static String routeName = 'MobileFormModifierPage';
  static String routePath = '/mobileFormModifierPage';

  @override
  State<MobileFormModifierPageWidget> createState() =>
      _MobileFormModifierPageWidgetState();
}

class _MobileFormModifierPageWidgetState
    extends State<MobileFormModifierPageWidget> {
  late MobileFormModifierPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileFormModifierPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF4F9F9),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Modifier le rendez-vous',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          wrapWithModel(
                            model: _model.sectionHeaderModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: SectionHeaderWidget(
                              title: 'Patient',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.sectionHeaderModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: SectionHeaderWidget(
                              title: 'Rendez-vous',
                            ),
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropdownValueController ??=
                                FormFieldController<String>(
                              _model.dropdownValue ??= 'Dr Sana Ben Amor',
                            ),
                            options: [
                              'Dr Sana Ben Amor',
                              'Dr Ahmed Alouini',
                              'Dr Leila Kamoun'
                            ],
                            onChanged: (val) =>
                                safeSetState(() => _model.dropdownValue = val),
                            width: 200.0,
                            height: 40.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                            hintText: 'Dr Sana Ben Amor',
                            icon: Icon(
                              Icons.arrow_drop_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 1.0,
                            borderRadius: 16.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                            labelText: 'Médecin',
                            labelTextStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          wrapWithModel(
                            model: _model.statusBannerModel,
                            updateCallback: () => safeSetState(() {}),
                            child: StatusBanner2Widget(
                              isFree: true,
                              message: 'Créneau libre pour Dr Sana Ben Amor',
                            ),
                          ),
                          Container(
                            height: 80.0,
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFF4F9F9), Color(0x00F4F9F9)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, 1.0),
                    end: AlignmentDirectional(0, -1.0),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Container(
                      width: 0.0,
                      height: 0.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
