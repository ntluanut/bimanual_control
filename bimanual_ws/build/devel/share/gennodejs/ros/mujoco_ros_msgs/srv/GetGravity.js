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


//-----------------------------------------------------------

class GetGravityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.admin_hash = null;
    }
    else {
      if (initObj.hasOwnProperty('admin_hash')) {
        this.admin_hash = initObj.admin_hash
      }
      else {
        this.admin_hash = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGravityRequest
    // Serialize message field [admin_hash]
    bufferOffset = _serializer.string(obj.admin_hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGravityRequest
    let len;
    let data = new GetGravityRequest(null);
    // Deserialize message field [admin_hash]
    data.admin_hash = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.admin_hash);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetGravityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94026b9d54c5b3518f6b5e8e6de79e78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string admin_hash
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGravityRequest(null);
    if (msg.admin_hash !== undefined) {
      resolved.admin_hash = msg.admin_hash;
    }
    else {
      resolved.admin_hash = ''
    }

    return resolved;
    }
};

class GetGravityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gravity = null;
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('gravity')) {
        this.gravity = initObj.gravity
      }
      else {
        this.gravity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status_message')) {
        this.status_message = initObj.status_message
      }
      else {
        this.status_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGravityResponse
    // Check that the constant length array field [gravity] has the right length
    if (obj.gravity.length !== 3) {
      throw new Error('Unable to serialize array field gravity - length must be 3')
    }
    // Serialize message field [gravity]
    bufferOffset = _arraySerializer.float64(obj.gravity, buffer, bufferOffset, 3);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGravityResponse
    let len;
    let data = new GetGravityResponse(null);
    // Deserialize message field [gravity]
    data.gravity = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status_message);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetGravityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd77eeea56cea8aad98b6cdadc7802a20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[3] gravity
    bool success
    string status_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGravityResponse(null);
    if (msg.gravity !== undefined) {
      resolved.gravity = msg.gravity;
    }
    else {
      resolved.gravity = new Array(3).fill(0)
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status_message !== undefined) {
      resolved.status_message = msg.status_message;
    }
    else {
      resolved.status_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetGravityRequest,
  Response: GetGravityResponse,
  md5sum() { return '0eb542bfe5118c877d3ecf5ee3b1b29a'; },
  datatype() { return 'mujoco_ros_msgs/GetGravity'; }
};
