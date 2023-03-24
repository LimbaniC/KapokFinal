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

class TeamManagementCopy2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for hamburgerMenu component.
  late HamburgerMenuModel hamburgerMenuModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    hamburgerMenuModel = createModel(context, () => HamburgerMenuModel());
  }

  void dispose() {
    hamburgerMenuModel.dispose();
  }

  /// Additional helper methods are added here.

}
