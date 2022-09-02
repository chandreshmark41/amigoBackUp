import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TCODetailsScreenCopyCopyWidget extends StatefulWidget {
  const TCODetailsScreenCopyCopyWidget({
    Key? key,
    this.selectedfpnNumber,
  }) : super(key: key);

  final String? selectedfpnNumber;

  @override
  _TCODetailsScreenCopyCopyWidgetState createState() =>
      _TCODetailsScreenCopyCopyWidgetState();
}

class _TCODetailsScreenCopyCopyWidgetState
    extends State<TCODetailsScreenCopyCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: FPNTCODetailsCall.call(
        userId: FFAppState().adID,
        fpnNo: widget.selectedfpnNumber,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitChasingDots(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final tCODetailsScreenCopyCopyFPNTCODetailsResponse = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
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
                await actions.lockOrientationPortrait();
              },
            ),
            title: Text(
              'TCO Details',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF3999D2),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary50,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Total Expenditure cost',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final fixedColumnValues = functions
                                .getFixedColumnData(
                                    tCODetailsScreenCopyCopyFPNTCODetailsResponse
                                        .jsonBody)
                                .toList();
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(fixedColumnValues.length,
                                  (fixedColumnValuesIndex) {
                                final fixedColumnValuesItem =
                                    fixedColumnValues[fixedColumnValuesIndex];
                                return Container(
                                  width: 300,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryOrange500,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary50,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      fixedColumnValuesItem,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .darkGrey,
                                          ),
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Builder(
                                builder: (context) {
                                  final headerData = functions
                                      .getTCOHeaderData(FPNTCODetailsCall.vData(
                                        tCODetailsScreenCopyCopyFPNTCODetailsResponse
                                            .jsonBody,
                                      ))
                                      .toList();
                                  return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: List.generate(headerData.length,
                                        (headerDataIndex) {
                                      final headerDataItem =
                                          headerData[headerDataIndex];
                                      return Container(
                                        width: 300,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryBlue500,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryNeutral900,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Text(
                                            headerDataItem,
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                              Builder(
                                builder: (context) {
                                  final tcoDataList = functions
                                      .getTableDataOfTco(
                                          tCODetailsScreenCopyCopyFPNTCODetailsResponse
                                              .jsonBody)
                                      .map((e) => e)
                                      .toList();
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children:
                                          List.generate(tcoDataList.length,
                                              (tcoDataListIndex) {
                                        final tcoDataListItem =
                                            tcoDataList[tcoDataListIndex];
                                        return Builder(
                                          builder: (context) {
                                            final tcoObject =
                                                tcoDataListItem.toList();
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: List.generate(
                                                  tcoObject.length,
                                                  (tcoObjectIndex) {
                                                final tcoObjectItem =
                                                    tcoObject[tcoObjectIndex];
                                                return Container(
                                                  width: 300,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    border: Border.all(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryNeutral900,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Text(
                                                      tcoObjectItem,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
