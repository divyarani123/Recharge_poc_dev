import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OTPAuthModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for OtpCtrl widget.
  TextEditingController? otpCtrl;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    otpCtrl = TextEditingController();
  }

  void dispose() {
    otpCtrl?.dispose();
  }

  /// Additional helper methods are added here.

}
