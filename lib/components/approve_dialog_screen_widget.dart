import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ApproveDialogScreenWidget extends StatefulWidget {
  const ApproveDialogScreenWidget({
    Key? key,
    this.fpnNumber,
  }) : super(key: key);

  final String? fpnNumber;

  @override
  _ApproveDialogScreenWidgetState createState() =>
      _ApproveDialogScreenWidgetState();
}

class _ApproveDialogScreenWidgetState extends State<ApproveDialogScreenWidget> {
  ApiCallResponse? approveDoneResponse;
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Approve Remark',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).primaryShadesBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: TextFormField(
                  controller: textController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Approved',
                    hintStyle: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).primaryNeutral600,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryShadesBlack,
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryShadesBlack,
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  maxLines: 5,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FFButtonWidget(
                          onPressed: () async {
                            approveDoneResponse =
                                await FPNApproveRequestCall.call(
                              userId: FFAppState().adID,
                              fpnNo: widget.fpnNumber,
                              remark: textController!.text,
                              finConAnalystRemark: 'NA',
                            );
                            Navigator.pop(context);
                            if ((approveDoneResponse?.succeeded ?? true)) {
                              setState(() => FFAppState().returnStatus =
                                      FPNApproveRequestCall.returnStatus(
                                    (approveDoneResponse?.jsonBody ?? ''),
                                  ).toString());
                              if (FFAppState().returnStatus == '2') {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Approved'),
                                      content: Text('Approved Successfully'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Try Again Later',
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

                              Navigator.pop(context);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Something went wrong',
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).darkGrey,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryShadesBlack,
                                ),
                              );
                            }

                            setState(() {});
                          },
                          text: 'Submit',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).darkGrey,
                                  fontWeight: FontWeight.normal,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Cancel',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkGrey,
                                fontWeight: FontWeight.normal,
                              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
