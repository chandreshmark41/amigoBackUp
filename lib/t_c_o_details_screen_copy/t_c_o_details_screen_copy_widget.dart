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

class TCODetailsScreenCopyWidget extends StatefulWidget {
  const TCODetailsScreenCopyWidget({
    Key? key,
    this.selectedfpnNumber,
  }) : super(key: key);

  final String? selectedfpnNumber;

  @override
  _TCODetailsScreenCopyWidgetState createState() =>
      _TCODetailsScreenCopyWidgetState();
}

class _TCODetailsScreenCopyWidgetState
    extends State<TCODetailsScreenCopyWidget> {
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
        final tCODetailsScreenCopyFPNTCODetailsResponse = snapshot.data!;
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryPrimary300,
                      ),
                      child: Builder(
                        builder: (context) {
                          final tcoHeaderItems = functions
                              .getTCOHeaderData(FPNTCODetailsCall.vData(
                                tCODetailsScreenCopyFPNTCODetailsResponse
                                    .jsonBody,
                              ))
                              .toList();
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(tcoHeaderItems.length,
                                (tcoHeaderItemsIndex) {
                              final tcoHeaderItemsItem =
                                  tcoHeaderItems[tcoHeaderItemsIndex];
                              return Expanded(
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0x00F1F4F8),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryShadesBlack,
                                      width: 0.5,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 0, 2, 0),
                                      child: Text(
                                        tcoHeaderItemsItem,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 700,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final tcoDataTableListItems = functions
                                .getCostNameColumn(
                                    tCODetailsScreenCopyFPNTCODetailsResponse
                                        .jsonBody)
                                .map((e) => e)
                                .toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: tcoDataTableListItems.length,
                              itemBuilder:
                                  (context, tcoDataTableListItemsIndex) {
                                final tcoDataTableListItemsItem =
                                    tcoDataTableListItems[
                                        tcoDataTableListItemsIndex];
                                return Builder(
                                  builder: (context) {
                                    final tcoDetailsRowItems =
                                        tcoDataTableListItemsItem.toList();
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(
                                          tcoDetailsRowItems.length,
                                          (tcoDetailsRowItemsIndex) {
                                        final tcoDetailsRowItemsItem =
                                            tcoDetailsRowItems[
                                                tcoDetailsRowItemsIndex];
                                        return Expanded(
                                          child: Container(
                                            width: 100,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryShadesBlack,
                                                width: 0.5,
                                              ),
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(2, 0, 2, 0),
                                                child: Text(
                                                  tcoDetailsRowItemsItem,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
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
        );
      },
    );
  }
}
