import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  ApiCallResponse? adidLoginOutput;
  TextEditingController? textController1;
  TextEditingController? textController2;
  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/backgroundd.png',
                    ).image,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Image.asset(
                        'assets/images/login.png',
                        width: 200,
                        height: 90,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 60, 20, 20),
                      child: Text(
                        'SIGN IN',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).darkGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Text(
                        'Please use your  Windows Login ID and Password to login system',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).darkGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 10),
                      child: TextFormField(
                        controller: textController1,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'AD Login ID',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkGrey,
                                fontWeight: FontWeight.normal,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).darkGrey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).darkGrey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).darkGrey,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: TextFormField(
                        controller: textController2,
                        autofocus: true,
                        obscureText: !passwordVisibility,
                        decoration: InputDecoration(
                          hintText: 'AD Password',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkGrey,
                                fontWeight: FontWeight.normal,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).darkGrey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).darkGrey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: FlutterFlowTheme.of(context).darkGrey,
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).darkGrey,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  adidLoginOutput =
                                      await MainADIDLoginCall.call(
                                    empAdId: textController1!.text,
                                    password: textController2!.text,
                                    iMEICode: '123456',
                                    isOwner: 'NA',
                                  );
                                  _shouldSetState = true;
                                  if ((adidLoginOutput?.succeeded ?? true)) {
                                    setState(() => FFAppState().adID =
                                        textController1!.text);
                                    setState(() => FFAppState().adPassword =
                                        textController2!.text);
                                    setState(() => FFAppState().isIMEIexist =
                                            MainADIDLoginCall.isIMEIExists(
                                          (adidLoginOutput?.jsonBody ?? ''),
                                        ));
                                    setState(() => FFAppState().returnStatus =
                                            MainADIDLoginCall.returnStatus(
                                          (adidLoginOutput?.jsonBody ?? ''),
                                        ).toString());
                                    if (FFAppState().returnStatus == '2') {
                                      if (FFAppState().isIMEIexist == 1) {
                                        context.goNamed('HomePage');
                                      } else {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'Are you Owner of the device ?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text('No'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child: Text('Yes'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          context.pushNamed('HomePage');
                                        } else {
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            MainADIDLoginCall.responseMessage(
                                              (adidLoginOutput?.jsonBody ?? ''),
                                            ).toString(),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .darkGrey,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryShadesBlack,
                                        ),
                                      );
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Please Try Again Later',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .darkGrey,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryShadesBlack,
                                      ),
                                    );
                                  }

                                  if (_shouldSetState) setState(() {});
                                },
                                text: 'SIGN IN',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 45,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryShadesBlack,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 10,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Image.asset(
                        'assets/images/BTG_Logo.png',
                        width: 120,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
