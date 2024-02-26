
"use strict";

let BoundingBox3D = require('./BoundingBox3D.js');
let KeyPoint3D = require('./KeyPoint3D.js');
let Point2D = require('./Point2D.js');
let Mask = require('./Mask.js');
let BoundingBox2D = require('./BoundingBox2D.js');
let KeyPoint2D = require('./KeyPoint2D.js');
let KeyPoint2DArray = require('./KeyPoint2DArray.js');
let Vector2 = require('./Vector2.js');
let DetectionArray = require('./DetectionArray.js');
let KeyPoint3DArray = require('./KeyPoint3DArray.js');
let YoloResult = require('./YoloResult.js');
let Pose2D = require('./Pose2D.js');
let Detection = require('./Detection.js');

module.exports = {
  BoundingBox3D: BoundingBox3D,
  KeyPoint3D: KeyPoint3D,
  Point2D: Point2D,
  Mask: Mask,
  BoundingBox2D: BoundingBox2D,
  KeyPoint2D: KeyPoint2D,
  KeyPoint2DArray: KeyPoint2DArray,
  Vector2: Vector2,
  DetectionArray: DetectionArray,
  KeyPoint3DArray: KeyPoint3DArray,
  YoloResult: YoloResult,
  Pose2D: Pose2D,
  Detection: Detection,
};
