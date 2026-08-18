// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BodyState = require('../msg/BodyState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetBodyStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.set_pose = null;
      this.set_twist = null;
      this.set_mass = null;
      this.reset_qpos = null;
      this.admin_hash = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new BodyState();
      }
      if (initObj.hasOwnProperty('set_pose')) {
        this.set_pose = initObj.set_pose
      }
      else {
        this.set_pose = false;
      }
      if (initObj.hasOwnProperty('set_twist')) {
        this.set_twist = initObj.set_twist
      }
      else {
        this.set_twist = false;
      }
      if (initObj.hasOwnProperty('set_mass')) {
        this.set_mass = initObj.set_mass
      }
      else {
        this.set_mass = false;
      }
      if (initObj.hasOwnProperty('reset_qpos')) {
        this.reset_qpos = initObj.reset_qpos
      }
      else {
        this.reset_qpos = false;
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
    // Serializes a message object of type SetBodyStateRequest
    // Serialize message field [state]
    bufferOffset = BodyState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [set_pose]
    bufferOffset = _serializer.bool(obj.set_pose, buffer, bufferOffset);
    // Serialize message field [set_twist]
    bufferOffset = _serializer.bool(obj.set_twist, buffer, bufferOffset);
    // Serialize message field [set_mass]
    bufferOffset = _serializer.bool(obj.set_mass, buffer, bufferOffset);
    // Serialize message field [reset_qpos]
    bufferOffset = _serializer.bool(obj.reset_qpos, buffer, bufferOffset);
    // Serialize message field [admin_hash]
    bufferOffset = _serializer.string(obj.admin_hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBodyStateRequest
    let len;
    let data = new SetBodyStateRequest(null);
    // Deserialize message field [state]
    data.state = BodyState.deserialize(buffer, bufferOffset);
    // Deserialize message field [set_pose]
    data.set_pose = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_twist]
    data.set_twist = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_mass]
    data.set_mass = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_qpos]
    data.reset_qpos = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [admin_hash]
    data.admin_hash = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BodyState.getMessageSize(object.state);
    length += _getByteLength(object.admin_hash);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/SetBodyStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7871b44af6e6afd801e968f9f575e766';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/BodyState state
    bool set_pose
    bool set_twist
    bool set_mass
    bool reset_qpos
    string admin_hash
    
    ================================================================================
    MSG: mujoco_ros_msgs/BodyState
    string name                 # this can either be the body name or name of a geom belongig to the body.
    geometry_msgs/PoseStamped pose
    geometry_msgs/TwistStamped twist
    float32 mass
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    
    ================================================================================
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3 linear
    Vector3 angular
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBodyStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = BodyState.Resolve(msg.state)
    }
    else {
      resolved.state = new BodyState()
    }

    if (msg.set_pose !== undefined) {
      resolved.set_pose = msg.set_pose;
    }
    else {
      resolved.set_pose = false
    }

    if (msg.set_twist !== undefined) {
      resolved.set_twist = msg.set_twist;
    }
    else {
      resolved.set_twist = false
    }

    if (msg.set_mass !== undefined) {
      resolved.set_mass = msg.set_mass;
    }
    else {
      resolved.set_mass = false
    }

    if (msg.reset_qpos !== undefined) {
      resolved.reset_qpos = msg.reset_qpos;
    }
    else {
      resolved.reset_qpos = false
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

class SetBodyStateResponse {
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
    // Serializes a message object of type SetBodyStateResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBodyStateResponse
    let len;
    let data = new SetBodyStateResponse(null);
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
    return 'mujoco_ros_msgs/SetBodyStateResponse';
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
    const resolved = new SetBodyStateResponse(null);
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
  Request: SetBodyStateRequest,
  Response: SetBodyStateResponse,
  md5sum() { return 'dca3e244d1ac24ae8650b204afd0c666'; },
  datatype() { return 'mujoco_ros_msgs/SetBodyState'; }
};
