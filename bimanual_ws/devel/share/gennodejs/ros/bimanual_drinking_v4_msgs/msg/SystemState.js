// Auto-generated. Do not edit!

// (in-package bimanual_drinking_v4_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.phase = null;
      this.busy = null;
      this.estop = null;
      this.left_arm_connected = null;
      this.right_arm_connected = null;
      this.left_hand_alive = null;
      this.right_hand_alive = null;
      this.bottle_frame_valid = null;
      this.cap_target_valid = null;
      this.last_error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = '';
      }
      if (initObj.hasOwnProperty('busy')) {
        this.busy = initObj.busy
      }
      else {
        this.busy = false;
      }
      if (initObj.hasOwnProperty('estop')) {
        this.estop = initObj.estop
      }
      else {
        this.estop = false;
      }
      if (initObj.hasOwnProperty('left_arm_connected')) {
        this.left_arm_connected = initObj.left_arm_connected
      }
      else {
        this.left_arm_connected = false;
      }
      if (initObj.hasOwnProperty('right_arm_connected')) {
        this.right_arm_connected = initObj.right_arm_connected
      }
      else {
        this.right_arm_connected = false;
      }
      if (initObj.hasOwnProperty('left_hand_alive')) {
        this.left_hand_alive = initObj.left_hand_alive
      }
      else {
        this.left_hand_alive = false;
      }
      if (initObj.hasOwnProperty('right_hand_alive')) {
        this.right_hand_alive = initObj.right_hand_alive
      }
      else {
        this.right_hand_alive = false;
      }
      if (initObj.hasOwnProperty('bottle_frame_valid')) {
        this.bottle_frame_valid = initObj.bottle_frame_valid
      }
      else {
        this.bottle_frame_valid = false;
      }
      if (initObj.hasOwnProperty('cap_target_valid')) {
        this.cap_target_valid = initObj.cap_target_valid
      }
      else {
        this.cap_target_valid = false;
      }
      if (initObj.hasOwnProperty('last_error')) {
        this.last_error = initObj.last_error
      }
      else {
        this.last_error = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [phase]
    bufferOffset = _serializer.string(obj.phase, buffer, bufferOffset);
    // Serialize message field [busy]
    bufferOffset = _serializer.bool(obj.busy, buffer, bufferOffset);
    // Serialize message field [estop]
    bufferOffset = _serializer.bool(obj.estop, buffer, bufferOffset);
    // Serialize message field [left_arm_connected]
    bufferOffset = _serializer.bool(obj.left_arm_connected, buffer, bufferOffset);
    // Serialize message field [right_arm_connected]
    bufferOffset = _serializer.bool(obj.right_arm_connected, buffer, bufferOffset);
    // Serialize message field [left_hand_alive]
    bufferOffset = _serializer.bool(obj.left_hand_alive, buffer, bufferOffset);
    // Serialize message field [right_hand_alive]
    bufferOffset = _serializer.bool(obj.right_hand_alive, buffer, bufferOffset);
    // Serialize message field [bottle_frame_valid]
    bufferOffset = _serializer.bool(obj.bottle_frame_valid, buffer, bufferOffset);
    // Serialize message field [cap_target_valid]
    bufferOffset = _serializer.bool(obj.cap_target_valid, buffer, bufferOffset);
    // Serialize message field [last_error]
    bufferOffset = _serializer.string(obj.last_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemState
    let len;
    let data = new SystemState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [phase]
    data.phase = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [busy]
    data.busy = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [estop]
    data.estop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_arm_connected]
    data.left_arm_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_arm_connected]
    data.right_arm_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_hand_alive]
    data.left_hand_alive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_hand_alive]
    data.right_hand_alive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bottle_frame_valid]
    data.bottle_frame_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_target_valid]
    data.cap_target_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [last_error]
    data.last_error = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.phase);
    length += _getByteLength(object.last_error);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bimanual_drinking_v4_msgs/SystemState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6335e50c6ea7d69d826d644fffce39d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string phase
    bool busy
    bool estop
    bool left_arm_connected
    bool right_arm_connected
    bool left_hand_alive
    bool right_hand_alive
    bool bottle_frame_valid
    bool cap_target_valid
    string last_error
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = ''
    }

    if (msg.busy !== undefined) {
      resolved.busy = msg.busy;
    }
    else {
      resolved.busy = false
    }

    if (msg.estop !== undefined) {
      resolved.estop = msg.estop;
    }
    else {
      resolved.estop = false
    }

    if (msg.left_arm_connected !== undefined) {
      resolved.left_arm_connected = msg.left_arm_connected;
    }
    else {
      resolved.left_arm_connected = false
    }

    if (msg.right_arm_connected !== undefined) {
      resolved.right_arm_connected = msg.right_arm_connected;
    }
    else {
      resolved.right_arm_connected = false
    }

    if (msg.left_hand_alive !== undefined) {
      resolved.left_hand_alive = msg.left_hand_alive;
    }
    else {
      resolved.left_hand_alive = false
    }

    if (msg.right_hand_alive !== undefined) {
      resolved.right_hand_alive = msg.right_hand_alive;
    }
    else {
      resolved.right_hand_alive = false
    }

    if (msg.bottle_frame_valid !== undefined) {
      resolved.bottle_frame_valid = msg.bottle_frame_valid;
    }
    else {
      resolved.bottle_frame_valid = false
    }

    if (msg.cap_target_valid !== undefined) {
      resolved.cap_target_valid = msg.cap_target_valid;
    }
    else {
      resolved.cap_target_valid = false
    }

    if (msg.last_error !== undefined) {
      resolved.last_error = msg.last_error;
    }
    else {
      resolved.last_error = ''
    }

    return resolved;
    }
};

module.exports = SystemState;
