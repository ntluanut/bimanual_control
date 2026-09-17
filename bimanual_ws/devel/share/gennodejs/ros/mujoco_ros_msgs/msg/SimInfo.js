// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StateUint = require('./StateUint.js');

//-----------------------------------------------------------

class SimInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_path = null;
      this.model_valid = null;
      this.load_count = null;
      this.loading_state = null;
      this.paused = null;
      this.pending_sim_steps = null;
      this.rt_measured = null;
      this.rt_setting = null;
    }
    else {
      if (initObj.hasOwnProperty('model_path')) {
        this.model_path = initObj.model_path
      }
      else {
        this.model_path = '';
      }
      if (initObj.hasOwnProperty('model_valid')) {
        this.model_valid = initObj.model_valid
      }
      else {
        this.model_valid = false;
      }
      if (initObj.hasOwnProperty('load_count')) {
        this.load_count = initObj.load_count
      }
      else {
        this.load_count = 0;
      }
      if (initObj.hasOwnProperty('loading_state')) {
        this.loading_state = initObj.loading_state
      }
      else {
        this.loading_state = new StateUint();
      }
      if (initObj.hasOwnProperty('paused')) {
        this.paused = initObj.paused
      }
      else {
        this.paused = false;
      }
      if (initObj.hasOwnProperty('pending_sim_steps')) {
        this.pending_sim_steps = initObj.pending_sim_steps
      }
      else {
        this.pending_sim_steps = 0;
      }
      if (initObj.hasOwnProperty('rt_measured')) {
        this.rt_measured = initObj.rt_measured
      }
      else {
        this.rt_measured = 0.0;
      }
      if (initObj.hasOwnProperty('rt_setting')) {
        this.rt_setting = initObj.rt_setting
      }
      else {
        this.rt_setting = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimInfo
    // Serialize message field [model_path]
    bufferOffset = _serializer.string(obj.model_path, buffer, bufferOffset);
    // Serialize message field [model_valid]
    bufferOffset = _serializer.bool(obj.model_valid, buffer, bufferOffset);
    // Serialize message field [load_count]
    bufferOffset = _serializer.uint16(obj.load_count, buffer, bufferOffset);
    // Serialize message field [loading_state]
    bufferOffset = StateUint.serialize(obj.loading_state, buffer, bufferOffset);
    // Serialize message field [paused]
    bufferOffset = _serializer.bool(obj.paused, buffer, bufferOffset);
    // Serialize message field [pending_sim_steps]
    bufferOffset = _serializer.uint16(obj.pending_sim_steps, buffer, bufferOffset);
    // Serialize message field [rt_measured]
    bufferOffset = _serializer.float32(obj.rt_measured, buffer, bufferOffset);
    // Serialize message field [rt_setting]
    bufferOffset = _serializer.float32(obj.rt_setting, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimInfo
    let len;
    let data = new SimInfo(null);
    // Deserialize message field [model_path]
    data.model_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_valid]
    data.model_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [load_count]
    data.load_count = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [loading_state]
    data.loading_state = StateUint.deserialize(buffer, bufferOffset);
    // Deserialize message field [paused]
    data.paused = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pending_sim_steps]
    data.pending_sim_steps = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rt_measured]
    data.rt_measured = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rt_setting]
    data.rt_setting = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.model_path);
    length += StateUint.getMessageSize(object.loading_state);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mujoco_ros_msgs/SimInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50fb0bcacffb362708f3fc623e7e9a63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string model_path
    bool model_valid
    uint16 load_count # counter of (re)loads
    mujoco_ros_msgs/StateUint loading_state
    bool paused
    uint16 pending_sim_steps
    float32 rt_measured # measured real-time factor
    float32 rt_setting # desired real-time factor
    
    ================================================================================
    MSG: mujoco_ros_msgs/StateUint
    uint8 value
    string description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimInfo(null);
    if (msg.model_path !== undefined) {
      resolved.model_path = msg.model_path;
    }
    else {
      resolved.model_path = ''
    }

    if (msg.model_valid !== undefined) {
      resolved.model_valid = msg.model_valid;
    }
    else {
      resolved.model_valid = false
    }

    if (msg.load_count !== undefined) {
      resolved.load_count = msg.load_count;
    }
    else {
      resolved.load_count = 0
    }

    if (msg.loading_state !== undefined) {
      resolved.loading_state = StateUint.Resolve(msg.loading_state)
    }
    else {
      resolved.loading_state = new StateUint()
    }

    if (msg.paused !== undefined) {
      resolved.paused = msg.paused;
    }
    else {
      resolved.paused = false
    }

    if (msg.pending_sim_steps !== undefined) {
      resolved.pending_sim_steps = msg.pending_sim_steps;
    }
    else {
      resolved.pending_sim_steps = 0
    }

    if (msg.rt_measured !== undefined) {
      resolved.rt_measured = msg.rt_measured;
    }
    else {
      resolved.rt_measured = 0.0
    }

    if (msg.rt_setting !== undefined) {
      resolved.rt_setting = msg.rt_setting;
    }
    else {
      resolved.rt_setting = 0.0
    }

    return resolved;
    }
};

module.exports = SimInfo;
