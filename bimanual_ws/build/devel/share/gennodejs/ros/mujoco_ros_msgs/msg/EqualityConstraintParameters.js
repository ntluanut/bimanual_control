// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EqualityConstraintType = require('./EqualityConstraintType.js');
let SolverParameters = require('./SolverParameters.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class EqualityConstraintParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.solverParameters = null;
      this.active = null;
      this.classParam = null;
      this.element1 = null;
      this.element2 = null;
      this.torquescale = null;
      this.anchor = null;
      this.relpose = null;
      this.polycoef = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new EqualityConstraintType();
      }
      if (initObj.hasOwnProperty('solverParameters')) {
        this.solverParameters = initObj.solverParameters
      }
      else {
        this.solverParameters = new SolverParameters();
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
      if (initObj.hasOwnProperty('classParam')) {
        this.classParam = initObj.classParam
      }
      else {
        this.classParam = '';
      }
      if (initObj.hasOwnProperty('element1')) {
        this.element1 = initObj.element1
      }
      else {
        this.element1 = '';
      }
      if (initObj.hasOwnProperty('element2')) {
        this.element2 = initObj.element2
      }
      else {
        this.element2 = '';
      }
      if (initObj.hasOwnProperty('torquescale')) {
        this.torquescale = initObj.torquescale
      }
      else {
        this.torquescale = 0.0;
      }
      if (initObj.hasOwnProperty('anchor')) {
        this.anchor = initObj.anchor
      }
      else {
        this.anchor = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('relpose')) {
        this.relpose = initObj.relpose
      }
      else {
        this.relpose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('polycoef')) {
        this.polycoef = initObj.polycoef
      }
      else {
        this.polycoef = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EqualityConstraintParameters
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = EqualityConstraintType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [solverParameters]
    bufferOffset = SolverParameters.serialize(obj.solverParameters, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    // Serialize message field [classParam]
    bufferOffset = _serializer.string(obj.classParam, buffer, bufferOffset);
    // Serialize message field [element1]
    bufferOffset = _serializer.string(obj.element1, buffer, bufferOffset);
    // Serialize message field [element2]
    bufferOffset = _serializer.string(obj.element2, buffer, bufferOffset);
    // Serialize message field [torquescale]
    bufferOffset = _serializer.float64(obj.torquescale, buffer, bufferOffset);
    // Serialize message field [anchor]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.anchor, buffer, bufferOffset);
    // Serialize message field [relpose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.relpose, buffer, bufferOffset);
    // Serialize message field [polycoef]
    bufferOffset = _arraySerializer.float64(obj.polycoef, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EqualityConstraintParameters
    let len;
    let data = new EqualityConstraintParameters(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = EqualityConstraintType.deserialize(buffer, bufferOffset);
    // Deserialize message field [solverParameters]
    data.solverParameters = SolverParameters.deserialize(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [classParam]
    data.classParam = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [element1]
    data.element1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [element2]
    data.element2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [torquescale]
    data.torquescale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [anchor]
    data.anchor = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [relpose]
    data.relpose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [polycoef]
    data.polycoef = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.classParam);
    length += _getByteLength(object.element1);
    length += _getByteLength(object.element2);
    length += 8 * object.polycoef.length;
    return length + 167;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mujoco_ros_msgs/EqualityConstraintParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '152c371cf6b748601a865ee2d968aec7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new EqualityConstraintParameters(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = EqualityConstraintType.Resolve(msg.type)
    }
    else {
      resolved.type = new EqualityConstraintType()
    }

    if (msg.solverParameters !== undefined) {
      resolved.solverParameters = SolverParameters.Resolve(msg.solverParameters)
    }
    else {
      resolved.solverParameters = new SolverParameters()
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    if (msg.classParam !== undefined) {
      resolved.classParam = msg.classParam;
    }
    else {
      resolved.classParam = ''
    }

    if (msg.element1 !== undefined) {
      resolved.element1 = msg.element1;
    }
    else {
      resolved.element1 = ''
    }

    if (msg.element2 !== undefined) {
      resolved.element2 = msg.element2;
    }
    else {
      resolved.element2 = ''
    }

    if (msg.torquescale !== undefined) {
      resolved.torquescale = msg.torquescale;
    }
    else {
      resolved.torquescale = 0.0
    }

    if (msg.anchor !== undefined) {
      resolved.anchor = geometry_msgs.msg.Vector3.Resolve(msg.anchor)
    }
    else {
      resolved.anchor = new geometry_msgs.msg.Vector3()
    }

    if (msg.relpose !== undefined) {
      resolved.relpose = geometry_msgs.msg.Pose.Resolve(msg.relpose)
    }
    else {
      resolved.relpose = new geometry_msgs.msg.Pose()
    }

    if (msg.polycoef !== undefined) {
      resolved.polycoef = msg.polycoef;
    }
    else {
      resolved.polycoef = []
    }

    return resolved;
    }
};

module.exports = EqualityConstraintParameters;
