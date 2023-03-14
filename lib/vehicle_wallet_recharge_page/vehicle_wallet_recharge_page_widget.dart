import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vehicle_wallet_recharge_page_model.dart';
export 'vehicle_wallet_recharge_page_model.dart';

class VehicleWalletRechargePageWidget extends StatefulWidget {
  const VehicleWalletRechargePageWidget({
    Key? key,
    this.vehiclePage,
  }) : super(key: key);

  final bool? vehiclePage;

  @override
  _VehicleWalletRechargePageWidgetState createState() =>
      _VehicleWalletRechargePageWidgetState();
}

class _VehicleWalletRechargePageWidgetState
    extends State<VehicleWalletRechargePageWidget> {
  late VehicleWalletRechargePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VehicleWalletRechargePageModel());

    _model.vehicleCtrlController ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
        title: 'VehicleWalletRechargePage',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF025395),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (FFAppState().isVehicle)
                  Align(
                    alignment: AlignmentDirectional(-0.35, 0),
                    child: Text(
                      'Vehicle Recharge',
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'Lato',
                            color: Colors.white,
                            fontSize: 22,
                          ),
                    ),
                  ),
                if (!FFAppState().isVehicle)
                  Align(
                    alignment: AlignmentDirectional(-0.35, 0),
                    child: Text(
                      'Wallet Recharge',
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'Lato',
                            color: Colors.white,
                            fontSize: 22,
                          ),
                    ),
                  ),
              ],
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 0, 8),
                              child: Text(
                                'Enter the required below fields ',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Lato',
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.38,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(50),
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(1, 1),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 30, 15, 30),
                              child: Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (FFAppState().isVehicle)
                                          Expanded(
                                            child: TextFormField(
                                              controller:
                                                  _model.vehicleCtrlController,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.vehicleCtrlController',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              textCapitalization:
                                                  TextCapitalization.characters,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Enter Vehicle No',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF025395),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFDD2C2C),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFDD2C2C),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                suffixIcon: _model
                                                        .vehicleCtrlController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .vehicleCtrlController
                                                              ?.clear();
                                                          setState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.clear,
                                                          color:
                                                              Color(0xFF757575),
                                                          size: 22,
                                                        ),
                                                      )
                                                    : null,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                              keyboardType: TextInputType.name,
                                              validator: _model
                                                  .vehicleCtrlControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                      ],
                                    ),
                                    if (!FFAppState().isVehicle)
                                      FlutterFlowDropDown<String>(
                                        options: functions
                                            .walletidStringConverter(
                                                FFAppState().WalletId.toList(),
                                                'id')!
                                            .toList(),
                                        onChanged: (val) => setState(() =>
                                            _model.walletDropdownValue = val),
                                        width: double.infinity,
                                        height: 50,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lato',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        hintText: 'Select Wallet ID',
                                        fillColor: Colors.white,
                                        elevation: 1,
                                        borderColor: Color(0xFF025395),
                                        borderWidth: 1,
                                        borderRadius: 10,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: _model.textController2,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController2',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Enter Your Amount',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF025395),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF025395),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFDD2C2C),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFDD2C2C),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              suffixIcon: _model
                                                      .textController2!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model.textController2
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            validator: _model
                                                .textController2Validator
                                                .asValidator(context),
                                            inputFormatters: [
                                              FilteringTextInputFormatter.allow(
                                                  RegExp('[0-9]'))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    FlutterFlowDropDown<String>(
                                      options: functions
                                          .activeAccounts(
                                              FFAppState().BankNames.toList())
                                          .toList(),
                                      onChanged: (val) => setState(
                                          () => _model.dropDownValue = val),
                                      width: double.infinity,
                                      height: 50,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lato',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      hintText: 'Select Your Account',
                                      fillColor: Colors.white,
                                      elevation: 1,
                                      borderColor: Color(0xFF025395),
                                      borderWidth: 1,
                                      borderRadius: 10,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      hidesUnderline: true,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (functions
                            .activeAccounts(FFAppState().BankNames.toList())
                            .length ==
                        0)
                      Text(
                        'Sorry, No active accounts.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 0,
                          height: MediaQuery.of(context).size.height * 0.28,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: FFButtonWidget(
                            onPressed: !() {
                              if ((_model.vehicleCtrlController.text != null &&
                                      _model.vehicleCtrlController.text !=
                                          '') &&
                                  (_model.textController2.text != null &&
                                      _model.textController2.text != '') &&
                                  (_model.dropDownValue != null &&
                                      _model.dropDownValue != '')) {
                                return true;
                              } else if ((_model.walletDropdownValue != null &&
                                      _model.walletDropdownValue != '') &&
                                  (_model.textController2.text != null &&
                                      _model.textController2.text != '') &&
                                  (_model.dropDownValue != null &&
                                      _model.dropDownValue != '')) {
                                return true;
                              } else {
                                return false;
                              }
                            }()
                                ? null
                                : () async {
                                    var _shouldSetState = false;
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (FFAppState().isVehicle) {
                                      if (functions.vehicleNumbeValidation(
                                          _model.vehicleCtrlController.text,
                                          FFAppState().WalletId.toList())!) {
                                        _model.vehicleDetails =
                                            await actions.activeVehicleNumbers(
                                          _model.vehicleCtrlController.text,
                                          FFAppState().WalletId.toList(),
                                        );
                                        _shouldSetState = true;

                                        context.pushNamed(
                                          'ReviewPage',
                                          queryParams: {
                                            'vehicleNo': serializeParam(
                                              _model.vehicleCtrlController.text,
                                              ParamType.String,
                                            ),
                                            'enteredAmt': serializeParam(
                                              _model.textController2.text,
                                              ParamType.String,
                                            ),
                                            'selectedBnk': serializeParam(
                                              _model.dropDownValue,
                                              ParamType.String,
                                            ),
                                            'vehicleMappedWalletId':
                                                serializeParam(
                                              getJsonField(
                                                _model.vehicleDetails,
                                                r'''$.id''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );

                                        await actions.dismissKeyBoard(
                                          context,
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Alert'),
                                              content: Text(
                                                  'You have provided invalid vehicle number '),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      if (functions.walletidValidation(
                                          FFAppState().WalletId.toList(),
                                          _model.walletDropdownValue)!) {
                                        context.pushNamed(
                                          'ReviewPage',
                                          queryParams: {
                                            'walletID': serializeParam(
                                              _model.walletDropdownValue,
                                              ParamType.String,
                                            ),
                                            'enteredAmt': serializeParam(
                                              _model.textController2.text,
                                              ParamType.String,
                                            ),
                                            'selectedBnk': serializeParam(
                                              _model.dropDownValue,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );

                                        await actions.dismissKeyBoard(
                                          context,
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Alert'),
                                              content: Text(
                                                  'Sorry, Seems your Wallet Id is Blocked. Please select valid ID'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                            text: 'Submit',
                            options: FFButtonOptions(
                              width: 350,
                              height: 50,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: Color(0xFF025395),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              disabledColor: Color(0xFFDBE2E7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
