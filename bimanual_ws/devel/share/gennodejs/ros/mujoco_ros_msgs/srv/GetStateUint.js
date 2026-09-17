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

let StateUint = require('../msg/StateUint.js');

//-----------------------------------------------------------

class GetStateUintRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStateUintRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStateUintRequest
    let len;
    let data = new GetStateUintRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetStateUintRequest';
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
    const resolved = new GetStateUintRequest(null);
    return resolved;
    }
};

class GetStateUintResponse {
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
        this.state = new StateUint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStateUintResponse
    // Serialize message field [state]
    bufferOffset = StateUint.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStateUintResponse
    let len;
    let data = new GetStateUintResponse(null);
    // Deserialize message field [state]
    data.state = StateUint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += StateUint.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetStateUintResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e15f8271e1c8147c518f22f4076ebd9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/StateUint state
    
    
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
    const resolved = new GetStateUintResponse(null);
    if (msg.state !== undefined) {
      resolved.state = StateUint.Resolve(msg.state)
    }
    else {
      resolved.state = new StateUint()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetStateUintRequest,
  Response: GetStateUintResponse,
  md5sum() { return 'e15f8271e1c8147c518f22f4076ebd9c'; },
  datatype() { return 'mujoco_ros_msgs/GetStateUint'; }
};
