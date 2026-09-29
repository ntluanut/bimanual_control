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

class SolverParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dmin = null;
      this.dmax = null;
      this.width = null;
      this.midpoint = null;
      this.power = null;
      this.timeconst = null;
      this.dampratio = null;
    }
    else {
      if (initObj.hasOwnProperty('dmin')) {
        this.dmin = initObj.dmin
      }
      else {
        this.dmin = 0.0;
      }
      if (initObj.hasOwnProperty('dmax')) {
        this.dmax = initObj.dmax
      }
      else {
        this.dmax = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('midpoint')) {
        this.midpoint = initObj.midpoint
      }
      else {
        this.midpoint = 0.0;
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0.0;
      }
      if (initObj.hasOwnProperty('timeconst')) {
        this.timeconst = initObj.timeconst
      }
      else {
        this.timeconst = 0.0;
      }
      if (initObj.hasOwnProperty('dampratio')) {
        this.dampratio = initObj.dampratio
      }
      else {
        this.dampratio = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SolverParameters
    // Serialize message field [dmin]
    bufferOffset = _serializer.float64(obj.dmin, buffer, bufferOffset);
    // Serialize message field [dmax]
    bufferOffset = _serializer.float64(obj.dmax, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [midpoint]
    bufferOffset = _serializer.float64(obj.midpoint, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.float64(obj.power, buffer, bufferOffset);
    // Serialize message field [timeconst]
    bufferOffset = _serializer.float64(obj.timeconst, buffer, bufferOffset);
    // Serialize message field [dampratio]
    bufferOffset = _serializer.float64(obj.dampratio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SolverParameters
    let len;
    let data = new SolverParameters(null);
    // Deserialize message field [dmin]
    data.dmin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dmax]
    data.dmax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [midpoint]
    data.midpoint = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timeconst]
    data.timeconst = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dampratio]
    data.dampratio = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mujoco_ros_msgs/SolverParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b04c6e904f30629555e3a6f113fc0eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # solimp parameters
    
    float64 dmin
    float64 dmax
    float64 width
    float64 midpoint
    float64 power
    
    # solref parameters
    
    float64 timeconst
    float64 dampratio
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SolverParameters(null);
    if (msg.dmin !== undefined) {
      resolved.dmin = msg.dmin;
    }
    else {
      resolved.dmin = 0.0
    }

    if (msg.dmax !== undefined) {
      resolved.dmax = msg.dmax;
    }
    else {
      resolved.dmax = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.midpoint !== undefined) {
      resolved.midpoint = msg.midpoint;
    }
    else {
      resolved.midpoint = 0.0
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0.0
    }

    if (msg.timeconst !== undefined) {
      resolved.timeconst = msg.timeconst;
    }
    else {
      resolved.timeconst = 0.0
    }

    if (msg.dampratio !== undefined) {
      resolved.dampratio = msg.dampratio;
    }
    else {
      resolved.dampratio = 0.0
    }

    return resolved;
    }
};

module.exports = SolverParameters;
