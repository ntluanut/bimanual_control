// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let PluginStats = require('../msg/PluginStats.js');

//-----------------------------------------------------------

class GetPluginStatsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPluginStatsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPluginStatsRequest
    let len;
    let data = new GetPluginStatsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetPluginStatsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPluginStatsRequest(null);
    return resolved;
    }
};

class GetPluginStatsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stats = null;
    }
    else {
      if (initObj.hasOwnProperty('stats')) {
        this.stats = initObj.stats
      }
      else {
        this.stats = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPluginStatsResponse
    // Serialize message field [stats]
    // Serialize the length for message field [stats]
    bufferOffset = _serializer.uint32(obj.stats.length, buffer, bufferOffset);
    obj.stats.forEach((val) => {
      bufferOffset = PluginStats.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPluginStatsResponse
    let len;
    let data = new GetPluginStatsResponse(null);
    // Deserialize message field [stats]
    // Deserialize array length for message field [stats]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stats = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stats[i] = PluginStats.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.stats.forEach((val) => {
      length += PluginStats.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetPluginStatsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d3043450de18344352d2d333c449deb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/PluginStats[] stats
    
    
    ================================================================================
    MSG: mujoco_ros_msgs/PluginStats
    string plugin_type
    float32 load_time
    float32 reset_time
    float32 ema_steptime_control
    float32 ema_steptime_passive
    float32 ema_steptime_render
    float32 ema_steptime_last_stage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPluginStatsResponse(null);
    if (msg.stats !== undefined) {
      resolved.stats = new Array(msg.stats.length);
      for (let i = 0; i < resolved.stats.length; ++i) {
        resolved.stats[i] = PluginStats.Resolve(msg.stats[i]);
      }
    }
    else {
      resolved.stats = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPluginStatsRequest,
  Response: GetPluginStatsResponse,
  md5sum() { return '7d3043450de18344352d2d333c449deb'; },
  datatype() { return 'mujoco_ros_msgs/GetPluginStats'; }
};
