
"use strict";

let Load = require('./Load.js')
let IsProgramSaved = require('./IsProgramSaved.js')
let GetSafetyMode = require('./GetSafetyMode.js')
let IsInRemoteControl = require('./IsInRemoteControl.js')
let GetLoadedProgram = require('./GetLoadedProgram.js')
let RawRequest = require('./RawRequest.js')
let Popup = require('./Popup.js')
let GetProgramState = require('./GetProgramState.js')
let GetRobotMode = require('./GetRobotMode.js')
let AddToLog = require('./AddToLog.js')
let IsProgramRunning = require('./IsProgramRunning.js')

module.exports = {
  Load: Load,
  IsProgramSaved: IsProgramSaved,
  GetSafetyMode: GetSafetyMode,
  IsInRemoteControl: IsInRemoteControl,
  GetLoadedProgram: GetLoadedProgram,
  RawRequest: RawRequest,
  Popup: Popup,
  GetProgramState: GetProgramState,
  GetRobotMode: GetRobotMode,
  AddToLog: AddToLog,
  IsProgramRunning: IsProgramRunning,
};
