import '/components/hamburger_menu_widget.dart';
import '/create_task_final_copy/create_task_final_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/new_view_tasks_manager/new_view_tasks_manager_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'team_management_copy_model.dart';
export 'team_management_copy_model.dart';

class TeamManagementCopyWidget extends StatefulWidget {
  const TeamManagementCopyWidget({Key? key}) : super(key: key);

  @override
  _TeamManagementCopyWidgetState createState() =>
      _TeamManagementCopyWidgetState();
}

class _TeamManagementCopyWidgetState extends State<TeamManagementCopyWidget> {
  late TeamManagementCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamManagementCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xE6FFFFFF),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          elevation: 100.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/Kapok_2-modified.png',
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.hamburgerMenuModel,
                  updateCallback: () => setState(() {}),
                  child: HamburgerMenuWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF013576),
        automaticallyImplyLeading: true,
        title: Text(
          'Team Name',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Open Sans',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 550.0,
                    decoration: BoxDecoration(
                      color: Color(0xE6FFFFFF),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F9FC),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4E000000),
                                    offset: Offset(3.0, 4.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Color(0x74000000),
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().popupActivated =
                                              !FFAppState().popupActivated);
                                    },
                                    value: FFAppState().popupActivated,
                                    onIcon: Icon(
                                      Icons.check_box,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                  Text(
                                    'Team member name',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F9FC),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4E000000),
                                    offset: Offset(3.0, 4.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Color(0x74000000),
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().popupActivated =
                                              !FFAppState().popupActivated);
                                    },
                                    value: FFAppState().popupActivated,
                                    onIcon: Icon(
                                      Icons.check_box,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                  Text(
                                    'Team member name',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F9FC),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4E000000),
                                    offset: Offset(3.0, 4.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Color(0x74000000),
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().popupActivated =
                                              !FFAppState().popupActivated);
                                    },
                                    value: FFAppState().popupActivated,
                                    onIcon: Icon(
                                      Icons.check_box,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                  Text(
                                    'Team member name',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F9FC),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4E000000),
                                    offset: Offset(3.0, 4.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Color(0x74000000),
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().popupActivated =
                                              !FFAppState().popupActivated);
                                    },
                                    value: FFAppState().popupActivated,
                                    onIcon: Icon(
                                      Icons.check_box,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                  Text(
                                    'Team member name',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F9FC),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4E000000),
                                    offset: Offset(3.0, 4.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Color(0x74000000),
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().popupActivated =
                                              !FFAppState().popupActivated);
                                    },
                                    value: FFAppState().popupActivated,
                                    onIcon: Icon(
                                      Icons.check_box,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                  Text(
                                    'Team member name',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F9FC),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4E000000),
                                    offset: Offset(3.0, 4.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Color(0x74000000),
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().popupActivated =
                                              !FFAppState().popupActivated);
                                    },
                                    value: FFAppState().popupActivated,
                                    onIcon: Icon(
                                      Icons.check_box,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                  Text(
                                    'Team member name',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F9FC),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4E000000),
                                    offset: Offset(3.0, 4.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  color: Color(0x74000000),
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ToggleIcon(
                                    onPressed: () async {
                                      setState(() =>
                                          FFAppState().popupActivated =
                                              !FFAppState().popupActivated);
                                    },
                                    value: FFAppState().popupActivated,
                                    onIcon: Icon(
                                      Icons.check_box,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                    offIcon: Icon(
                                      Icons.check_box_outline_blank,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                  ),
                                  Text(
                                    'Team member name',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
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
            Container(
              width: double.infinity,
              height: 190.0,
              decoration: BoxDecoration(
                color: Color(0xFF013576),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                border: Border.all(
                  color: Color(0x467E8383),
                  width: 3.0,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: 345.5,
                      height: 73.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 1.0,
                          ),
                          scrollDirection: Axis.vertical,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 50.0,
                              borderWidth: 3.0,
                              buttonSize: 100.0,
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Color(0x74000000),
                                size: 50.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 50.0,
                              borderWidth: 3.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.highlight_off,
                                color: Color(0x74000000),
                                size: 50.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 50.0,
                              borderWidth: 3.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.add,
                                color: Color(0x74000000),
                                size: 50.0,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        CreateTaskFinalCopyWidget(),
                                  ),
                                );
                              },
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 50.0,
                              borderWidth: 3.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.delete,
                                color: Color(0x74000000),
                                size: 50.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewViewTasksManagerWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 65.2,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'View Team Tasks',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
