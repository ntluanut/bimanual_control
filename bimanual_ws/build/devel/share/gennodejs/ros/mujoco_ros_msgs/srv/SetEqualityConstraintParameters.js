// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EqualityConstraintParameters = require('../msg/EqualityConstraintParameters.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetEqualityConstraintParametersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parameters = null;
      this.admin_hash = null;
    }
    else {
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = [];
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
    // Serializes a message object of type SetEqualityConstraintParametersRequest
    // Serialize message field [parameters]
    // Serialize the length for message field [parameters]
    bufferOffset = _serializer.uint32(obj.parameters.length, buffer, bufferOffset);
    obj.parameters.forEach((val) => {
      bufferOffset = EqualityConstraintParameters.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [admin_hash]
    bufferOffset = _serializer.string(obj.admin_hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEqualityConstraintParametersRequest
    let len;
    let data = new SetEqualityConstraintParametersRequest(null);
    // Deserialize message field [parameters]
    // Deserialize array length for message field [parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parameters[i] = EqualityConstraintParameters.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [admin_hash]
    data.admin_hash = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.parameters.forEach((val) => {
      length += EqualityConstraintParameters.getMessageSize(val);
    });
    length += _getByteLength(object.admin_hash);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/SetEqualityConstraintParametersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ecea1e56f290993908f178e043ffcb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/EqualityConstraintParameters[] parameters
    string admin_hash
    
    ================================================================================
    MSG: mujoco_ros_msgs/EqualityConstraintParameters
    string name
    mujoco_ros_msgs/EqualityConstraintType type
    mujoco_ros_msgs/SolverParameters solverParameters
    bool active
    string classParam
    string element1
    string element2
    float64 torquescale
    geometry_msgs/Vector3 anchor
    geometry_msgs/Pose relpose
    float64[] polycoef
    
    ================================================================================
    MSG: mujoco_ros_msgs/EqualityConstraintType
    uint16 value
    uint16 CONNECT=0
    uint16 WELD=1
    uint16 JOINT=2
    uint16 TENDON=3
    
    ================================================================================
    MSG: mujoco_ros_msgs/SolverParameters
    # solimp parameters
    
    float64 dmin
    float64 dmax
    float64 width
    float64 midpoint
    float64 power
    
    # solref parameters
    
    float64 timeconst
    float64 dampratio
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEqualityConstraintParametersRequest(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = new Array(msg.parameters.length);
      for (let i = 0; i < resolved.parameters.length; ++i) {
        resolved.parameters[i] = EqualityConstraintParameters.Resolve(msg.parameters[i]);
      }
    }
    else {
      resolved.parameters = []
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

class SetEqualityConstraintParametersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status_message = null;
    }
    else {
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
    // Serializes a message object of type SetEqualityConstraintParametersResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEqualityConstraintParametersResponse
    let len;
    let data = new SetEqualityConstraintParametersResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status_message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/SetEqualityConstraintParametersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ec6f3eff0161f4257b808b12bc830c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string status_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEqualityConstraintParametersResponse(null);
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
  Request: SetEqualityConstraintParametersRequest,
  Response: SetEqualityConstraintParametersResponse,
  md5sum() { return '8c7bc419b78113b1ae9c6f7fe138068f'; },
  datatype() { return 'mujoco_ros_msgs/SetEqualityConstraintParameters'; }
};
