import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    this.loginUserName,
  }) : super(key: key);

  final String? loginUserName;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  ApiCallResponse? fpnLoginApiCall;
  String? fpnLoginOutputResponse;
  ApiCallResponse? fpnLogoutOutput;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () async {
                            fpnLogoutOutput = await FPNLogoutCall.call(
                              empAdId: FFAppState().adID,
                            );
                            if ((fpnLogoutOutput?.succeeded ?? true)) {
                              context.pushNamed('LoginPage');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Logout Action Failed',
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).darkGrey,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryPrimar900,
                                ),
                              );
                            }

                            setState(() {});
                          },
                          child: Icon(
                            Icons.power_settings_new,
                            color: FlutterFlowTheme.of(context).darkGrey,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0x00F1F4F8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (FFAppState().welcomeName == true)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 10),
                                      child: Text(
                                        'Welcome Back',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .darkGrey,
                                              fontSize: 24,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  if (FFAppState().welcomeName == true)
                                    Text(
                                      widget.loginUserName!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .darkGrey,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 10),
                                      child: Image.asset(
                                        'assets/images/isac.png',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      'ISAC',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .darkGrey,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 10),
                                      child: Image.asset(
                                        'assets/images/icart_icon.png',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      'iCART 2.0',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .darkGrey,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              fpnLoginOutputResponse = await actions.fpnLogin(
                                FFAppState().adID,
                                FFAppState().adPassword,
                                '123456',
                                'NA',
                                'NA',
                                'NA',
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    fpnLoginOutputResponse!,
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              );
                              fpnLoginApiCall = await FPNLoginCall.call(
                                empAdId: FFAppState().adID,
                                iMEICode: 'utijytgkgy',
                                approverId: 'ykykygkhm',
                                requestId: 'ygkygkh,g',
                                formId: 'ykygk,gk',
                                password: FFAppState().adPassword,
                              );
                              setState(() =>
                                  FFAppState().returnStatus = getJsonField(
                                    (fpnLoginApiCall?.jsonBody ?? ''),
                                    r'''$.ReturnStatus''',
                                  ).toString());
                              if (FFAppState().returnStatus == '2') {
                                setState(() => FFAppState().fpnToken =
                                    fpnLoginOutputResponse!);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Token saved',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .darkGrey,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 6500),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryShadesBlack,
                                  ),
                                );
                                context.pushNamed(
                                  'IApprovalDashboardPage',
                                  queryParams: {
                                    'fPNLoginResponse': serializeParam(
                                        getJsonField(
                                          (fpnLoginApiCall?.jsonBody ?? ''),
                                          r'''$.FPNLoginData''',
                                        ),
                                        ParamType.JSON),
                                  }.withoutNulls,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Login Failed',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .darkGrey,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryPrimar900,
                                  ),
                                );
                              }

                              setState(() {});
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Image.asset(
                                    'assets/images/FPN.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  'IApproval',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .darkGrey,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
