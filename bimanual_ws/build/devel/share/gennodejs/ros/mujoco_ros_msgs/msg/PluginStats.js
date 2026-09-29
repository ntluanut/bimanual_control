// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PluginStats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plugin_type = null;
      this.load_time = null;
      this.reset_time = null;
      this.ema_steptime_control = null;
      this.ema_steptime_passive = null;
      this.ema_steptime_render = null;
      this.ema_steptime_last_stage = null;
    }
    else {
      if (initObj.hasOwnProperty('plugin_type')) {
        this.plugin_type = initObj.plugin_type
      }
      else {
        this.plugin_type = '';
      }
      if (initObj.hasOwnProperty('load_time')) {
        this.load_time = initObj.load_time
      }
      else {
        this.load_time = 0.0;
      }
      if (initObj.hasOwnProperty('reset_time')) {
        this.reset_time = initObj.reset_time
      }
      else {
        this.reset_time = 0.0;
      }
      if (initObj.hasOwnProperty('ema_steptime_control')) {
        this.ema_steptime_control = initObj.ema_steptime_control
      }
      else {
        this.ema_steptime_control = 0.0;
      }
      if (initObj.hasOwnProperty('ema_steptime_passive')) {
        this.ema_steptime_passive = initObj.ema_steptime_passive
      }
      else {
        this.ema_steptime_passive = 0.0;
      }
      if (initObj.hasOwnProperty('ema_steptime_render')) {
        this.ema_steptime_render = initObj.ema_steptime_render
      }
      else {
        this.ema_steptime_render = 0.0;
      }
      if (initObj.hasOwnProperty('ema_steptime_last_stage')) {
        this.ema_steptime_last_stage = initObj.ema_steptime_last_stage
      }
      else {
        this.ema_steptime_last_stage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PluginStats
    // Serialize message field [plugin_type]
    bufferOffset = _serializer.string(obj.plugin_type, buffer, bufferOffset);
    // Serialize message field [load_time]
    bufferOffset = _serializer.float32(obj.load_time, buffer, bufferOffset);
    // Serialize message field [reset_time]
    bufferOffset = _serializer.float32(obj.reset_time, buffer, bufferOffset);
    // Serialize message field [ema_steptime_control]
    bufferOffset = _serializer.float32(obj.ema_steptime_control, buffer, bufferOffset);
    // Serialize message field [ema_steptime_passive]
    bufferOffset = _serializer.float32(obj.ema_steptime_passive, buffer, bufferOffset);
    // Serialize message field [ema_steptime_render]
    bufferOffset = _serializer.float32(obj.ema_steptime_render, buffer, bufferOffset);
    // Serialize message field [ema_steptime_last_stage]
    bufferOffset = _serializer.float32(obj.ema_steptime_last_stage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PluginStats
    let len;
    let data = new PluginStats(null);
    // Deserialize message field [plugin_type]
    data.plugin_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [load_time]
    data.load_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reset_time]
    data.reset_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ema_steptime_control]
    data.ema_steptime_control = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ema_steptime_passive]
    data.ema_steptime_passive = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ema_steptime_render]
    data.ema_steptime_render = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ema_steptime_last_stage]
    data.ema_steptime_last_stage = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.plugin_type);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mujoco_ros_msgs/PluginStats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8952a8d56593bd9d53888ef079c075b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PluginStats(null);
    if (msg.plugin_type !== undefined) {
      resolved.plugin_type = msg.plugin_type;
    }
    else {
      resolved.plugin_type = ''
    }

    if (msg.load_time !== undefined) {
      resolved.load_time = msg.load_time;
    }
    else {
      resolved.load_time = 0.0
    }

    if (msg.reset_time !== undefined) {
      resolved.reset_time = msg.reset_time;
    }
    else {
      resolved.reset_time = 0.0
    }

    if (msg.ema_steptime_control !== undefined) {
      resolved.ema_steptime_control = msg.ema_steptime_control;
    }
    else {
      resolved.ema_steptime_control = 0.0
    }

    if (msg.ema_steptime_passive !== undefined) {
      resolved.ema_steptime_passive = msg.ema_steptime_passive;
    }
    else {
      resolved.ema_steptime_passive = 0.0
    }

    if (msg.ema_steptime_render !== undefined) {
      resolved.ema_steptime_render = msg.ema_steptime_render;
    }
    else {
      resolved.ema_steptime_render = 0.0
    }

    if (msg.ema_steptime_last_stage !== undefined) {
      resolved.ema_steptime_last_stage = msg.ema_steptime_last_stage;
    }
    else {
      resolved.ema_steptime_last_stage = 0.0
    }

    return resolved;
    }
};

module.exports = PluginStats;
