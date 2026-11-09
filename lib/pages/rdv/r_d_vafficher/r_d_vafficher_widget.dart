import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/appointment_card_widget.dart';
import '/components/confirm_suppression_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_d_vafficher_model.dart';
export 'r_d_vafficher_model.dart';

/// Mobile app screen "Rendez-vous" for a medical clinic app called MediRDV,
/// Material 3 style, primary color teal (#00747F), very light teal-white
/// background, rounded cards, French labels.
///
/// Top bar: title "Rendez-vous" aligned left, and on the right a small
/// circular avatar with the initials "SB" on a light teal background.
///
/// Below the top bar, a TabBar with two tabs: "À venir (4)" (selected, teal
/// underline) and "Passés (12)". Under the tabs, a single ActionChip with a
/// person icon and the text "Tous les médecins" that opens a doctor filter.
///
/// Main body: a scrollable ListView of appointment cards (Card with light
/// teal tint, rounded corners, thin border). Each card contains:
/// - on the left, a small date block with the weekday abbreviation (MAR), the
/// day number in large bold (13) and the month abbreviation (OCT)
/// - next to it: the patient name in bold (e.g. "Melek Boukhris"), below it
/// "Dr Sana Ben Amor" in grey, and below that a clock icon with the time
/// "09:30"
/// - on the top right of the card, a small rounded badge with the relative
/// date ("Demain", "Dans 2 jours")
/// - at the bottom of the card, separated by a thin divider, the text "Motif
/// : Fièvre et toux"
/// Show 3 sample cards: Melek Boukhris (Dr Sana Ben Amor, 13 OCT, 09:30,
/// Fièvre et toux), Mariem Nighaoui (Dr Karim Jlassi, 13 OCT, 10:30, Contrôle
/// annuel), Yassine Trabelsi (Dr Sana Ben Amor, 14 OCT, 15:00, Certificat
/// médical).
/// Tapping a card opens the appointment detail page.
///
/// Bottom right: an extended FloatingActionButton in teal with a "+" icon and
/// the label "Nouveau", opening the new appointment page.
///
/// Bottom: a NavigationBar with two destinations: "Rendez-vous" (calendar
/// icon, selected) and "Dossier médical" (document icon).
class RDVafficherWidget extends StatefulWidget {
  const RDVafficherWidget({super.key});

  static String routeName = 'RDVafficher';
  static String routePath = '/rDVafficher';

  @override
  State<RDVafficherWidget> createState() => _RDVafficherWidgetState();
}

class _RDVafficherWidgetState extends State<RDVafficherWidget> {
  late RDVafficherModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RDVafficherModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            context.pushNamed(RDVnouveauWidget.routeName);
          },
          backgroundColor: Color(0xFF00747F),
          icon: Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 24.0,
          ),
          elevation: 0.0,
          label: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(RDVnouveauWidget.routeName);
            },
            child: Text(
              'Nouveau',
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    ),
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 24.0, 16.0, 0.0),
                        child: Container(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'Rendez-vous',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 40.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(
                                          LoginPageWidget.routeName,
                                          context.mounted);
                                    },
                                    child: Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE0F2F1),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'SB',
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF00747F),
                                              fontSize: 13.68,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    StreamBuilder<List<RendezVousRecord>>(
                                      stream: queryRendezVousRecord(
                                        queryBuilder: (rendezVousRecord) =>
                                            rendezVousRecord.where(
                                          'date',
                                          isGreaterThan:
                                              functions.debutDuJour(),
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<RendezVousRecord>
                                            containerRendezVousRecordList =
                                            snapshot.data!;

                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().ongletRdv = 0;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 16.0),
                                              child: Container(
                                                child: Text(
                                                  key: ValueKey(
                                                      'A venir (${containerRendezVousRecordList.length.toString()})'),
                                                  'À venir ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        color: FFAppState()
                                                                    .ongletRdv ==
                                                                0
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0xFF626666),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 6.0),
                                      child: Container(
                                        width: 60.0,
                                        height: 3.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().ongletRdv == 0
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x00000000),
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    StreamBuilder<List<RendezVousRecord>>(
                                      stream: queryRendezVousRecord(
                                        queryBuilder: (rendezVousRecord) =>
                                            rendezVousRecord.where(
                                          'date',
                                          isLessThanOrEqualTo:
                                              functions.debutDuJour(),
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<RendezVousRecord>
                                            containerRendezVousRecordList =
                                            snapshot.data!;

                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().ongletRdv = 1;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 16.0),
                                              child: Container(
                                                child: Text(
                                                  key: ValueKey(
                                                      'A venir (${containerRendezVousRecordList.length.toString()})'),
                                                  'Passés ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 6.0),
                                      child: Container(
                                        width: 60.0,
                                        height: 3.0,
                                        decoration: BoxDecoration(
                                          color: FFAppState().ongletRdv == 1
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x00000000),
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ].divide(SizedBox(width: 24.0)),
                            ),
                          ),
                          Container(
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 14.0, 16.0, 14.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??= 'Tous les médecins',
                                ),
                                options: [
                                  'Tous les médecins',
                                  'Dr Karim Jlassi',
                                  'Dr Sana Ben Amor',
                                  'Dr Karim Hchicha'
                                ],
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.dropDownValue = val);
                                  FFAppState().medecinFiltre =
                                      _model.dropDownValue ==
                                              'Tous les médecins'
                                          ? ''
                                          : _model.dropDownValue!;
                                  safeSetState(() {});
                                },
                                width: 200.0,
                                height: 40.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF287850),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                hintText: 'Tous les médecins',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 15.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                              Expanded(
                                child: Container(
                                  width: 200.0,
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        FFAppState().recherche =
                                            _model.textController.text;
                                        safeSetState(() {});
                                      },
                                    ),
                                    autofocus: false,
                                    enabled: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF287850),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      hintText: 'Rechercher un patient',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF054610),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      prefixIcon: Icon(
                                        Icons.search_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    enableInteractiveSelection: true,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              if (valueOrDefault<bool>(
                                FFAppState().ongletRdv == 0,
                                false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    '     NB : double tap sur un rendez-vous pour le modifier.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              if ((FFAppState().ongletRdv == 0) &&
                                  (FFAppState().medecinFiltre == ''))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Container(
                                    child:
                                        StreamBuilder<List<RendezVousRecord>>(
                                      stream: queryRendezVousRecord(
                                        queryBuilder: (rendezVousRecord) =>
                                            rendezVousRecord
                                                .where(
                                                  'date',
                                                  isGreaterThanOrEqualTo:
                                                      functions.debutDuJour(),
                                                )
                                                .orderBy('date'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<RendezVousRecord>
                                            columnRendezVousRecordList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              columnRendezVousRecordList.length,
                                          itemBuilder: (context, columnIndex) {
                                            final columnRendezVousRecord =
                                                columnRendezVousRecordList[
                                                    columnIndex];
                                            return Visibility(
                                              visible: functions.rechercher(
                                                      columnRendezVousRecord
                                                          .patientNom,
                                                      FFAppState().recherche) ==
                                                  true,
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: Stack(
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onDoubleTap: () async {
                                                        context.pushNamed(
                                                          RDVmodifWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'rdv':
                                                                serializeParam(
                                                              columnRendezVousRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'rdv':
                                                                columnRendezVousRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child:
                                                            AppointmentCardWidget(
                                                          key: Key(
                                                              'Key8hb_${columnIndex}_of_${columnRendezVousRecordList.length}'),
                                                          weekday: dateTimeFormat(
                                                              "EEE",
                                                              columnRendezVousRecord
                                                                  .date),
                                                          day: dateTimeFormat(
                                                              "dd",
                                                              columnRendezVousRecord
                                                                  .date),
                                                          month: dateTimeFormat(
                                                              "MMM",
                                                              columnRendezVousRecord
                                                                  .date),
                                                          patient:
                                                              columnRendezVousRecord
                                                                  .patientNom,
                                                          doctor:
                                                              columnRendezVousRecord
                                                                  .medecin,
                                                          time:
                                                              columnRendezVousRecord
                                                                  .heure,
                                                          relative: functions
                                                              .joursRestants(
                                                                  columnRendezVousRecord
                                                                      .date),
                                                          reason:
                                                              columnRendezVousRecord
                                                                  .motif,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    130.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        13.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderRadius: 8.0,
                                                              buttonSize: 40.0,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              icon: Icon(
                                                                Icons.delete,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                size: 24.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  barrierColor:
                                                                      Color(
                                                                          0x80000000),
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              380.0,
                                                                          child:
                                                                              ConfirmSuppressionWidget(
                                                                            rdv:
                                                                                columnRendezVousRecord,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  295.0,
                                                                  70.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderRadius: 8.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        icon: Icon(
                                                          Icons.sms,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          await launchURL(
                                                              'sms:${columnRendezVousRecord.patientTelephone}?body=Bonjour, rappel de votre rendez-vous le ${dateTimeFormat("d/M/y", columnRendezVousRecord.date)} à  ${columnRendezVousRecord.heure}');
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              if ((FFAppState().ongletRdv == 0) &&
                                  (FFAppState().medecinFiltre != ''))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child:
                                        StreamBuilder<List<RendezVousRecord>>(
                                      stream: queryRendezVousRecord(
                                        queryBuilder: (rendezVousRecord) =>
                                            rendezVousRecord
                                                .where(
                                                  'date',
                                                  isGreaterThanOrEqualTo:
                                                      functions.debutDuJour(),
                                                )
                                                .where(
                                                  'medecin',
                                                  isEqualTo: FFAppState()
                                                      .medecinFiltre,
                                                )
                                                .orderBy('date'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<RendezVousRecord>
                                            columnRendezVousRecordList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              columnRendezVousRecordList.length,
                                          itemBuilder: (context, columnIndex) {
                                            final columnRendezVousRecord =
                                                columnRendezVousRecordList[
                                                    columnIndex];
                                            return Visibility(
                                              visible: functions.rechercher(
                                                      columnRendezVousRecord
                                                          .patientNom,
                                                      FFAppState().recherche) ==
                                                  true,
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: Stack(
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onDoubleTap: () async {
                                                        context.pushNamed(
                                                          RDVmodifWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'rdv':
                                                                serializeParam(
                                                              columnRendezVousRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'rdv':
                                                                columnRendezVousRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child:
                                                            AppointmentCardWidget(
                                                          key: Key(
                                                              'Key9y4_${columnIndex}_of_${columnRendezVousRecordList.length}'),
                                                          weekday: dateTimeFormat(
                                                              "EEE",
                                                              columnRendezVousRecord
                                                                  .date),
                                                          day: dateTimeFormat(
                                                              "dd",
                                                              columnRendezVousRecord
                                                                  .date),
                                                          month: dateTimeFormat(
                                                              "MMM",
                                                              columnRendezVousRecord
                                                                  .date),
                                                          patient:
                                                              columnRendezVousRecord
                                                                  .patientNom,
                                                          doctor:
                                                              columnRendezVousRecord
                                                                  .medecin,
                                                          time:
                                                              columnRendezVousRecord
                                                                  .heure,
                                                          relative: functions
                                                              .joursRestants(
                                                                  columnRendezVousRecord
                                                                      .date),
                                                          reason:
                                                              columnRendezVousRecord
                                                                  .motif,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    130.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderRadius: 8.0,
                                                            buttonSize: 40.0,
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            icon: Icon(
                                                              Icons.delete,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                barrierColor: Color(
                                                                    0x80000000),
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            380.0,
                                                                        child:
                                                                            ConfirmSuppressionWidget(
                                                                          rdv:
                                                                              columnRendezVousRecord,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              if ((FFAppState().ongletRdv == 1) &&
                                  (FFAppState().medecinFiltre == ''))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child:
                                        StreamBuilder<List<RendezVousRecord>>(
                                      stream: queryRendezVousRecord(
                                        queryBuilder: (rendezVousRecord) =>
                                            rendezVousRecord
                                                .where(
                                                  'date',
                                                  isLessThanOrEqualTo:
                                                      functions.debutDuJour(),
                                                )
                                                .orderBy('date',
                                                    descending: true),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<RendezVousRecord>
                                            columnRendezVousRecordList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              columnRendezVousRecordList.length,
                                          itemBuilder: (context, columnIndex) {
                                            final columnRendezVousRecord =
                                                columnRendezVousRecordList[
                                                    columnIndex];
                                            return Visibility(
                                              visible: functions.rechercher(
                                                      columnRendezVousRecord
                                                          .patientNom,
                                                      FFAppState().recherche) ==
                                                  true,
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: AppointmentCardWidget(
                                                  key: Key(
                                                      'Keykrn_${columnIndex}_of_${columnRendezVousRecordList.length}'),
                                                  weekday: dateTimeFormat(
                                                      "EEE",
                                                      columnRendezVousRecord
                                                          .date),
                                                  day: dateTimeFormat(
                                                      "dd",
                                                      columnRendezVousRecord
                                                          .date),
                                                  month: dateTimeFormat(
                                                      "MMM",
                                                      columnRendezVousRecord
                                                          .date),
                                                  patient:
                                                      columnRendezVousRecord
                                                          .patientNom,
                                                  doctor: columnRendezVousRecord
                                                      .medecin,
                                                  time: columnRendezVousRecord
                                                      .heure,
                                                  relative:
                                                      functions.joursRestants(
                                                          columnRendezVousRecord
                                                              .date),
                                                  reason: columnRendezVousRecord
                                                      .motif,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              if ((FFAppState().ongletRdv == 1) &&
                                  (FFAppState().medecinFiltre != ''))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child:
                                        StreamBuilder<List<RendezVousRecord>>(
                                      stream: queryRendezVousRecord(
                                        queryBuilder: (rendezVousRecord) =>
                                            rendezVousRecord
                                                .where(
                                                  'date',
                                                  isLessThanOrEqualTo:
                                                      functions.debutDuJour(),
                                                )
                                                .where(
                                                  'medecin',
                                                  isEqualTo: FFAppState()
                                                      .medecinFiltre,
                                                )
                                                .orderBy('date',
                                                    descending: true),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<RendezVousRecord>
                                            columnRendezVousRecordList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              columnRendezVousRecordList.length,
                                          itemBuilder: (context, columnIndex) {
                                            final columnRendezVousRecord =
                                                columnRendezVousRecordList[
                                                    columnIndex];
                                            return Visibility(
                                              visible: functions.rechercher(
                                                      columnRendezVousRecord
                                                          .patientNom,
                                                      FFAppState().recherche) ==
                                                  true,
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: AppointmentCardWidget(
                                                  key: Key(
                                                      'Keyupu_${columnIndex}_of_${columnRendezVousRecordList.length}'),
                                                  weekday: dateTimeFormat(
                                                      "EEE",
                                                      columnRendezVousRecord
                                                          .date),
                                                  day: dateTimeFormat(
                                                      "dd",
                                                      columnRendezVousRecord
                                                          .date),
                                                  month: dateTimeFormat(
                                                      "MMM",
                                                      columnRendezVousRecord
                                                          .date),
                                                  patient:
                                                      columnRendezVousRecord
                                                          .patientNom,
                                                  doctor: columnRendezVousRecord
                                                      .medecin,
                                                  time: columnRendezVousRecord
                                                      .heure,
                                                  relative:
                                                      functions.joursRestants(
                                                          columnRendezVousRecord
                                                              .date),
                                                  reason: columnRendezVousRecord
                                                      .motif,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  child: Container(
                    width: 0.0,
                    height: 0.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
