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

class SensorNoiseModel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_name = null;
      this.mean = null;
      this.std = null;
      this.set_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_name')) {
        this.sensor_name = initObj.sensor_name
      }
      else {
        this.sensor_name = '';
      }
      if (initObj.hasOwnProperty('mean')) {
        this.mean = initObj.mean
      }
      else {
        this.mean = [];
      }
      if (initObj.hasOwnProperty('std')) {
        this.std = initObj.std
      }
      else {
        this.std = [];
      }
      if (initObj.hasOwnProperty('set_flag')) {
        this.set_flag = initObj.set_flag
      }
      else {
        this.set_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorNoiseModel
    // Serialize message field [sensor_name]
    bufferOffset = _serializer.string(obj.sensor_name, buffer, bufferOffset);
    // Serialize message field [mean]
    bufferOffset = _arraySerializer.float64(obj.mean, buffer, bufferOffset, null);
    // Serialize message field [std]
    bufferOffset = _arraySerializer.float64(obj.std, buffer, bufferOffset, null);
    // Serialize message field [set_flag]
    bufferOffset = _serializer.uint8(obj.set_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorNoiseModel
    let len;
    let data = new SensorNoiseModel(null);
    // Deserialize message field [sensor_name]
    data.sensor_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mean]
    data.mean = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [std]
    data.std = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [set_flag]
    data.set_flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sensor_name);
    length += 8 * object.mean.length;
    length += 8 * object.std.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mujoco_ros_msgs/SensorNoiseModel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecdfe0a7e1630fddef7c31cf04081974';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SensorNoiseModel(null);
    if (msg.sensor_name !== undefined) {
      resolved.sensor_name = msg.sensor_name;
    }
    else {
      resolved.sensor_name = ''
    }

    if (msg.mean !== undefined) {
      resolved.mean = msg.mean;
    }
    else {
      resolved.mean = []
    }

    if (msg.std !== undefined) {
      resolved.std = msg.std;
    }
    else {
      resolved.std = []
    }

    if (msg.set_flag !== undefined) {
      resolved.set_flag = msg.set_flag;
    }
    else {
      resolved.set_flag = 0
    }

    return resolved;
    }
};

module.exports = SensorNoiseModel;
