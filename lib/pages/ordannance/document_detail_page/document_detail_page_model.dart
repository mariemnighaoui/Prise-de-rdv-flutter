import '/components/info_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'document_detail_page_widget.dart' show DocumentDetailPageWidget;
import 'package:flutter/material.dart';

class DocumentDetailPageModel
    extends FlutterFlowModel<DocumentDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for InfoRow.
  late InfoRowModel infoRowModel1;
  // Model for InfoRow.
  late InfoRowModel infoRowModel2;
  // Model for InfoRow.
  late InfoRowModel infoRowModel3;

  @override
  void initState(BuildContext context) {
    infoRowModel1 = createModel(context, () => InfoRowModel());
    infoRowModel2 = createModel(context, () => InfoRowModel());
    infoRowModel3 = createModel(context, () => InfoRowModel());
  }

  @override
  void dispose() {
    infoRowModel1.dispose();
    infoRowModel2.dispose();
    infoRowModel3.dispose();
  }
}
