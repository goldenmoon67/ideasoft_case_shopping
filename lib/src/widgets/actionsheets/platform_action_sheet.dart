library platform_action_sheet;

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Display a platform dependent Action Sheet
class PlatformActionSheet {
  /// Function to display the sheet
  void displaySheet(
      {required BuildContext context,
      Widget? title,
      Widget? message,
      required List<ActionSheetAction> actions}) {
    if (Platform.isIOS) {
      _showCupertinoActionSheet(context, title, message, actions);
    } else {
      _settingModalBottomSheet(context, title, message, actions);
    }
  }
}

void _showCupertinoActionSheet(
    BuildContext context, title, message, List<ActionSheetAction> actions) {
  const noCancelOption = -1;
  // Cancel action is treated differently with CupertinoActionSheets
  var indexOfCancel = actions.lastIndexWhere((action) => action.isCancel);
  CupertinoActionSheet actionSheet;
  actionSheet = indexOfCancel == noCancelOption
      ? CupertinoActionSheet(
          title: title,
          message: message,
          actions: actions
              .where((action) => !action.isCancel)
              .map<Widget>(_cupertinoActionSheetActionFromAction)
              .toList())
      : CupertinoActionSheet(
          title: title,
          message: message,
          actions: actions
              .where((action) => !action.isCancel)
              .map<Widget>(_cupertinoActionSheetActionFromAction)
              .toList(),
          cancelButton:
              _cupertinoActionSheetActionFromAction(actions[indexOfCancel]));
  showCupertinoModalPopup(context: context, builder: (_) => actionSheet);
}

CupertinoActionSheetAction _cupertinoActionSheetActionFromAction(
        ActionSheetAction action) =>
    CupertinoActionSheetAction(
      onPressed: action.onPressed,
      isDefaultAction: action.defaultAction,
      child: Text(action.text),
    );

ListTile _listTileFromAction(ActionSheetAction action) => action.hasArrow
    ? ListTile(
        title: Text(action.text),
        onTap: action.onPressed,
        trailing: const Icon(Icons.keyboard_arrow_right),
      )
    : ListTile(
        title: Text(
          action.text,
          style: TextStyle(
              fontWeight:
                  action.defaultAction ? FontWeight.bold : FontWeight.normal),
        ),
        onTap: action.onPressed,
      );

void _settingModalBottomSheet(
    context, title, message, List<ActionSheetAction> actions) {
  if (actions.isNotEmpty) {
    showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        builder: (_) {
          const lastItem = 1, secondLastItem = 2;
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: title,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: message,
              ),
              ListView.separated(
                  padding: const EdgeInsets.only(left: 20),
                  shrinkWrap: true,
                  itemCount: actions.length,
                  itemBuilder: (_, index) =>
                      _listTileFromAction(actions[index]),
                  separatorBuilder: (_, index) =>
                      (index == (actions.length - secondLastItem) &&
                              actions[actions.length - lastItem].isCancel)
                          ? const Divider()
                          : Container()),
            ],
          );
        });
  }
}

/// Data class for Actions in ActionSheet
class ActionSheetAction {
  /// Text to display
  final String text;

  /// The function which will be called when the action is pressed
  final VoidCallback onPressed;

  /// Is this a default action - especially for iOS
  final bool defaultAction;

  /// This is a cancel option - especially for iOS
  final bool isCancel;

  /// on Android indicates that further options are next
  final bool hasArrow;

  /// Construction of an ActionSheetAction
  ActionSheetAction({
    required this.text,
    required this.onPressed,
    this.defaultAction = false,
    this.isCancel = false,
    this.hasArrow = false,
  });
}
