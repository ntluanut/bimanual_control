// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SensorNoiseModel = require('../msg/SensorNoiseModel.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RegisterSensorNoiseModelsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.noise_models = null;
      this.admin_hash = null;
    }
    else {
      if (initObj.hasOwnProperty('noise_models')) {
        this.noise_models = initObj.noise_models
      }
      else {
        this.noise_models = [];
      }
      if (initObj.hasOwnProperty('admin_hash')) {
        this.admin_hash = initObj.admin_hash
      }
      else {
        this.admin_hash = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterSensorNoiseModelsRequest
    // Serialize message field [noise_models]
    // Serialize the length for message field [noise_models]
    bufferOffset = _serializer.uint32(obj.noise_models.length, buffer, bufferOffset);
    obj.noise_models.forEach((val) => {
      bufferOffset = SensorNoiseModel.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [admin_hash]
    bufferOffset = _serializer.string(obj.admin_hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterSensorNoiseModelsRequest
    let len;
    let data = new RegisterSensorNoiseModelsRequest(null);
    // Deserialize message field [noise_models]
    // Deserialize array length for message field [noise_models]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.noise_models = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.noise_models[i] = SensorNoiseModel.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [admin_hash]
    data.admin_hash = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.noise_models.forEach((val) => {
      length += SensorNoiseModel.getMessageSize(val);
    });
    length += _getByteLength(object.admin_hash);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/RegisterSensorNoiseModelsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd47e7aa107d3e4664f1bd384900bfab2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/SensorNoiseModel[] noise_models
    string admin_hash
    
    ================================================================================
    MSG: mujoco_ros_msgs/SensorNoiseModel
    # Set the noise model of a sensor defining mean and standard deviation for each dimension
    # For quaternion sensors noise is calculated in euler angles (rad), converted to a quaternion and then applied. Thus only three mean/std pairs are required!
    string sensor_name
    float64[] mean
    float64[] std
    uint8 set_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterSensorNoiseModelsRequest(null);
    if (msg.noise_models !== undefined) {
      resolved.noise_models = new Array(msg.noise_models.length);
      for (let i = 0; i < resolved.noise_models.length; ++i) {
        resolved.noise_models[i] = SensorNoiseModel.Resolve(msg.noise_models[i]);
      }
    }
    else {
      resolved.noise_models = []
    }

    if (msg.admin_hash !== undefined) {
      resolved.admin_hash = msg.admin_hash;
    }
    else {
      resolved.admin_hash = ''
    }

    return resolved;
    }
};

class RegisterSensorNoiseModelsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterSensorNoiseModelsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterSensorNoiseModelsResponse
    let len;
    let data = new RegisterSensorNoiseModelsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/RegisterSensorNoiseModelsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterSensorNoiseModelsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RegisterSensorNoiseModelsRequest,
  Response: RegisterSensorNoiseModelsResponse,
  md5sum() { return '70ceb82b11a1148543bda7e861dfd43b'; },
  datatype() { return 'mujoco_ros_msgs/RegisterSensorNoiseModels'; }
};
