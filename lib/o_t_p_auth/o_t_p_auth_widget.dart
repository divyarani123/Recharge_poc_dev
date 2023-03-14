import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'o_t_p_auth_model.dart';
export 'o_t_p_auth_model.dart';

class OTPAuthWidget extends StatefulWidget {
  const OTPAuthWidget({
    Key? key,
    this.enteredAmt,
    this.vehicleNumber,
    this.walletidval,
    this.accountId,
    this.vehicleMappedWalletID,
  }) : super(key: key);

  final String? enteredAmt;
  final String? vehicleNumber;
  final String? walletidval;
  final String? accountId;
  final String? vehicleMappedWalletID;

  @override
  _OTPAuthWidgetState createState() => _OTPAuthWidgetState();
}

class _OTPAuthWidgetState extends State<OTPAuthWidget> {
  late OTPAuthModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OTPAuthModel());

    // _model.otpCtrl.text = "222222";

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'OTPAuth',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF025395),
            automaticallyImplyLeading: false,
            title: Text(
              'Enter Pin Code Below',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lato',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Confirm your OTP ',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Lato',
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(44, 10, 44, 0),
                        child: Text(
                          'This code helps to keep your account safe and secure.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Color(0x6FD0D0D0),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Text(
                                  '${FFAppState().authOtp}',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lato',
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 5, 10, 10),
                                child: Text(
                                  'The above  number is your OTP for your requested service for HDFC FASTag',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lato',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 40, 10, 0),
                        child: PinCodeTextField(
                          key: Key('otpCtrlKey'),
                          appContext: context,
                          length: 6,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Lato',
                                    fontSize: 15,
                                  ),
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          enableActiveFill: false,
                          autoFocus: true,
                          showCursor: true,
                          cursorColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          obscureText: true,
                          obscuringCharacter: '*',
                          hintCharacter: '-',
                          pinTheme: PinTheme(
                            fieldHeight: 45,
                            fieldWidth: 45,
                            borderWidth: 2,
                            borderRadius: BorderRadius.circular(12),
                            shape: PinCodeFieldShape.box,
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            inactiveColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            selectedColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            activeFillColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            inactiveFillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            selectedFillColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                          controller: _model.otpCtrl,
                          onChanged: (_) => {},
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 20, 0),
                            child: InkWell(
                              onTap: () async {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                setState(() {
                                  FFAppState().authOtp =
                                      random_data.randomString(
                                    6,
                                    6,
                                    false,
                                    false,
                                    true,
                                  );
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      '${FFAppState().authOtp} is your OTP for requested service on HDFC FASTag ${FFAppState().isVehicle ? 'Vehicle Recharge' : 'Wallet Recharge'}',
                                      style: GoogleFonts.getFont(
                                        'Lato',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 10000),
                                    backgroundColor: Color(0xFF204079),
                                  ),
                                );
                              },
                              child: Text(
                                'Resend OTP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lato',
                                      color: Color(0xFF025395),
                                      fontSize: 15,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 44),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.otpCtrl!.text == FFAppState().authOtp) {
                              await actions.dismissKeyBoard(
                                context,
                              );

                              context.pushNamed(
                                'successpage',
                                queryParams: {
                                  'vehicleNumber': serializeParam(
                                    widget.vehicleNumber,
                                    ParamType.String,
                                  ),
                                  'totalAmt': serializeParam(
                                    widget.enteredAmt,
                                    ParamType.String,
                                  ),
                                  'actID': serializeParam(
                                    widget.accountId,
                                    ParamType.String,
                                  ),
                                  'transID': serializeParam(
                                    random_data.randomString(
                                      12,
                                      12,
                                      false,
                                      false,
                                      true,
                                    ),
                                    ParamType.String,
                                  ),
                                  'paymentStatusRep': serializeParam(
                                    true,
                                    ParamType.bool,
                                  ),
                                  'trTime': serializeParam(
                                    getCurrentTimestamp,
                                    ParamType.DateTime,
                                  ),
                                  'walletNumber': serializeParam(
                                    widget.walletidval,
                                    ParamType.String,
                                  ),
                                  'vehicleMappedWalletID': serializeParam(
                                    widget.vehicleMappedWalletID,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            } else {
                              await actions.dismissKeyBoard(
                                context,
                              );

                              context.pushNamed(
                                'successpage',
                                queryParams: {
                                  'vehicleNumber': serializeParam(
                                    widget.vehicleNumber,
                                    ParamType.String,
                                  ),
                                  'totalAmt': serializeParam(
                                    widget.enteredAmt,
                                    ParamType.String,
                                  ),
                                  'actID': serializeParam(
                                    widget.accountId,
                                    ParamType.String,
                                  ),
                                  'transID': serializeParam(
                                    random_data.randomString(
                                      12,
                                      12,
                                      false,
                                      false,
                                      true,
                                    ),
                                    ParamType.String,
                                  ),
                                  'paymentStatusRep': serializeParam(
                                    false,
                                    ParamType.bool,
                                  ),
                                  'trTime': serializeParam(
                                    getCurrentTimestamp,
                                    ParamType.DateTime,
                                  ),
                                  'walletNumber': serializeParam(
                                    widget.walletidval,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            }

                            ScaffoldMessenger.of(context).clearSnackBars();
                          },
                          text: 'Confirm & Pay',
                          key: Key('authotpBTNKey'),
                          options: FFButtonOptions(
                            width: 270,
                            height: 50,
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: Color(0xFF025395),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lato',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
