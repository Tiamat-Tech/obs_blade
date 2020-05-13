import 'package:flutter/material.dart';

class SceneItem {
  double cy;
  double cx;

  /// The point on the source that the item is manipulated from. The sum of 1=Left or 2=Right, and 4=Top or 8=Bottom, or omit to center on that axis.
  double alignment;
  String name;

  /// Scene item ID
  int id;

  /// Whether or not this Scene Item is set to "visible"
  bool render;

  /// Whether or not this Scene Item is muted.
  bool muted;

  /// Whether or not this Scene Item is locked and can't be moved around
  bool locked;
  double sourceCy;
  double sourceCx;

  /// Source type. Value is one of the following: "input", "filter", "transition", "scene" or "unknown"
  String type;
  double volume;
  double x;
  double y;

  /// OPTIONAL - Name of the item's parent (if this item belongs to a group)
  String parentGroupName;

  /// OPTIONAL - List of children (if this item is a group)
  List<SceneItem> groupChildren;

  SceneItem(
      {@required this.cy,
      @required this.cx,
      @required this.alignment,
      @required this.name,
      @required this.id,
      @required this.render,
      @required this.muted,
      @required this.locked,
      @required this.sourceCy,
      @required this.sourceCx,
      @required this.type,
      @required this.volume,
      @required this.x,
      @required this.y,
      this.parentGroupName,
      this.groupChildren});

  static SceneItem fromJSON(Map<String, dynamic> json) => SceneItem(
      cy: json['cy'],
      cx: json['cx'],
      alignment: json['alignment'],
      name: json['name'],
      id: json['id'],
      render: json['render'],
      muted: json['muted'],
      locked: json['locked'],
      sourceCy: json['source_cy'],
      sourceCx: json['source_cx'],
      type: json['type'],
      volume: json['volume'],
      x: json['x'],
      y: json['y'],
      parentGroupName: json['parentGroupName'],
      groupChildren: json['groupChildren']);
}
