// Auto-generated. Do not edit!

// (in-package bimanual_drinking_v5_msgs.msg)


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
      this.moveit_ready = null;
      this.bottle_attached = null;
      this.left_hand_alive = null;
      this.right_hand_alive = null;
      this.left_hand_settled = null;
      this.right_hand_settled = null;
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
      if (initObj.hasOwnProperty('moveit_ready')) {
        this.moveit_ready = initObj.moveit_ready
      }
      else {
        this.moveit_ready = false;
      }
      if (initObj.hasOwnProperty('bottle_attached')) {
        this.bottle_attached = initObj.bottle_attached
      }
      else {
        this.bottle_attached = false;
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
      if (initObj.hasOwnProperty('left_hand_settled')) {
        this.left_hand_settled = initObj.left_hand_settled
      }
      else {
        this.left_hand_settled = false;
      }
      if (initObj.hasOwnProperty('right_hand_settled')) {
        this.right_hand_settled = initObj.right_hand_settled
      }
      else {
        this.right_hand_settled = false;
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
    // Serialize message field [moveit_ready]
    bufferOffset = _serializer.bool(obj.moveit_ready, buffer, bufferOffset);
    // Serialize message field [bottle_attached]
    bufferOffset = _serializer.bool(obj.bottle_attached, buffer, bufferOffset);
    // Serialize message field [left_hand_alive]
    bufferOffset = _serializer.bool(obj.left_hand_alive, buffer, bufferOffset);
    // Serialize message field [right_hand_alive]
    bufferOffset = _serializer.bool(obj.right_hand_alive, buffer, bufferOffset);
    // Serialize message field [left_hand_settled]
    bufferOffset = _serializer.bool(obj.left_hand_settled, buffer, bufferOffset);
    // Serialize message field [right_hand_settled]
    bufferOffset = _serializer.bool(obj.right_hand_settled, buffer, bufferOffset);
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
    // Deserialize message field [moveit_ready]
    data.moveit_ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bottle_attached]
    data.bottle_attached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_hand_alive]
    data.left_hand_alive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_hand_alive]
    data.right_hand_alive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_hand_settled]
    data.left_hand_settled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_hand_settled]
    data.right_hand_settled = _deserializer.bool(buffer, bufferOffset);
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
    return 'bimanual_drinking_v5_msgs/SystemState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7092e774a948ee80cb8059d5afed3515';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string phase
    bool busy
    bool estop
    bool moveit_ready
    bool bottle_attached
    bool left_hand_alive
    bool right_hand_alive
    bool left_hand_settled
    bool right_hand_settled
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

    if (msg.moveit_ready !== undefined) {
      resolved.moveit_ready = msg.moveit_ready;
    }
    else {
      resolved.moveit_ready = false
    }

    if (msg.bottle_attached !== undefined) {
      resolved.bottle_attached = msg.bottle_attached;
    }
    else {
      resolved.bottle_attached = false
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

    if (msg.left_hand_settled !== undefined) {
      resolved.left_hand_settled = msg.left_hand_settled;
    }
    else {
      resolved.left_hand_settled = false
    }

    if (msg.right_hand_settled !== undefined) {
      resolved.right_hand_settled = msg.right_hand_settled;
    }
    else {
      resolved.right_hand_settled = false
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
