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

let SimInfo = require('../msg/SimInfo.js');

//-----------------------------------------------------------

class GetSimInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSimInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSimInfoRequest
    let len;
    let data = new GetSimInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetSimInfoRequest';
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
    const resolved = new GetSimInfoRequest(null);
    return resolved;
    }
};

class GetSimInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new SimInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSimInfoResponse
    // Serialize message field [state]
    bufferOffset = SimInfo.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSimInfoResponse
    let len;
    let data = new GetSimInfoResponse(null);
    // Deserialize message field [state]
    data.state = SimInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SimInfo.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetSimInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d1bcf43ea2e10aaf5f5745e953cd88d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/SimInfo state
    
    
    ================================================================================
    MSG: mujoco_ros_msgs/SimInfo
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
    const resolved = new GetSimInfoResponse(null);
    if (msg.state !== undefined) {
      resolved.state = SimInfo.Resolve(msg.state)
    }
    else {
      resolved.state = new SimInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSimInfoRequest,
  Response: GetSimInfoResponse,
  md5sum() { return '9d1bcf43ea2e10aaf5f5745e953cd88d'; },
  datatype() { return 'mujoco_ros_msgs/GetSimInfo'; }
};
