import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailfieldsignup widget.
  FocusNode? emailfieldsignupFocusNode;
  TextEditingController? emailfieldsignupTextController;
  String? Function(BuildContext, String?)?
      emailfieldsignupTextControllerValidator;
  String? _emailfieldsignupTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passwordfieldsignup widget.
  FocusNode? passwordfieldsignupFocusNode;
  TextEditingController? passwordfieldsignupTextController;
  late bool passwordfieldsignupVisibility;
  String? Function(BuildContext, String?)?
      passwordfieldsignupTextControllerValidator;
  String? _passwordfieldsignupTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for passwordfieldsignup2 widget.
  FocusNode? passwordfieldsignup2FocusNode;
  TextEditingController? passwordfieldsignup2TextController;
  late bool passwordfieldsignup2Visibility;
  String? Function(BuildContext, String?)?
      passwordfieldsignup2TextControllerValidator;
  String? _passwordfieldsignup2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for emailfielsignin widget.
  FocusNode? emailfielsigninFocusNode;
  TextEditingController? emailfielsigninTextController;
  String? Function(BuildContext, String?)?
      emailfielsigninTextControllerValidator;
  // State field(s) for passwordfieldlogin widget.
  FocusNode? passwordfieldloginFocusNode;
  TextEditingController? passwordfieldloginTextController;
  late bool passwordfieldloginVisibility;
  String? Function(BuildContext, String?)?
      passwordfieldloginTextControllerValidator;

  @override
  void initState(BuildContext context) {
    emailfieldsignupTextControllerValidator =
        _emailfieldsignupTextControllerValidator;
    passwordfieldsignupVisibility = false;
    passwordfieldsignupTextControllerValidator =
        _passwordfieldsignupTextControllerValidator;
    passwordfieldsignup2Visibility = false;
    passwordfieldsignup2TextControllerValidator =
        _passwordfieldsignup2TextControllerValidator;
    passwordfieldloginVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailfieldsignupFocusNode?.dispose();
    emailfieldsignupTextController?.dispose();

    passwordfieldsignupFocusNode?.dispose();
    passwordfieldsignupTextController?.dispose();

    passwordfieldsignup2FocusNode?.dispose();
    passwordfieldsignup2TextController?.dispose();

    emailfielsigninFocusNode?.dispose();
    emailfielsigninTextController?.dispose();

    passwordfieldloginFocusNode?.dispose();
    passwordfieldloginTextController?.dispose();
  }
}
