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

let BodyState = require('../msg/BodyState.js');

//-----------------------------------------------------------

class GetBodyStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.admin_hash = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
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
    // Serializes a message object of type GetBodyStateRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [admin_hash]
    bufferOffset = _serializer.string(obj.admin_hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBodyStateRequest
    let len;
    let data = new GetBodyStateRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [admin_hash]
    data.admin_hash = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.admin_hash);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetBodyStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97071bee6aa31964d35a900defe051e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string admin_hash
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBodyStateRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
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

class GetBodyStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new BodyState();
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
    // Serializes a message object of type GetBodyStateResponse
    // Serialize message field [state]
    bufferOffset = BodyState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBodyStateResponse
    let len;
    let data = new GetBodyStateResponse(null);
    // Deserialize message field [state]
    data.state = BodyState.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BodyState.getMessageSize(object.state);
    length += _getByteLength(object.status_message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetBodyStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ac1afde3c706f4254fab46ddf449704';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/BodyState state
    bool success
    string status_message
    
    
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
    const resolved = new GetBodyStateResponse(null);
    if (msg.state !== undefined) {
      resolved.state = BodyState.Resolve(msg.state)
    }
    else {
      resolved.state = new BodyState()
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
  Request: GetBodyStateRequest,
  Response: GetBodyStateResponse,
  md5sum() { return '0322b483548cedc01d60d344a6aee68f'; },
  datatype() { return 'mujoco_ros_msgs/GetBodyState'; }
};
