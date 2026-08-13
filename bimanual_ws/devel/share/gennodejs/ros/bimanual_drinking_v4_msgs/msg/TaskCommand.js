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

class TaskCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.command = null;
      this.speed_scale = null;
      this.use_relative_planning = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('speed_scale')) {
        this.speed_scale = initObj.speed_scale
      }
      else {
        this.speed_scale = 0.0;
      }
      if (initObj.hasOwnProperty('use_relative_planning')) {
        this.use_relative_planning = initObj.use_relative_planning
      }
      else {
        this.use_relative_planning = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [speed_scale]
    bufferOffset = _serializer.float32(obj.speed_scale, buffer, bufferOffset);
    // Serialize message field [use_relative_planning]
    bufferOffset = _serializer.bool(obj.use_relative_planning, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskCommand
    let len;
    let data = new TaskCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_scale]
    data.speed_scale = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [use_relative_planning]
    data.use_relative_planning = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bimanual_drinking_v4_msgs/TaskCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17bd5cd1727d685e66c27d5606d0e4d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint8 STATUS=0
    uint8 CLEAR_ESTOP=1
    uint8 STOP=2
    uint8 HOME=10
    uint8 BOTTLE_PREGRASP=20
    uint8 BOTTLE_GRASP=21
    uint8 CAP_PREGRASP=30
    uint8 CAP_GRASP=31
    uint8 UNSCREW=32
    uint8 CAP_RETREAT=33
    uint8 LIFT_BOTTLE=40
    uint8 RETURN_HOME=50
    uint8 RUN_BOTTLE_CAP_SEQUENCE=100
    uint8 command
    float32 speed_scale
    bool use_relative_planning
    
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
    const resolved = new TaskCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.speed_scale !== undefined) {
      resolved.speed_scale = msg.speed_scale;
    }
    else {
      resolved.speed_scale = 0.0
    }

    if (msg.use_relative_planning !== undefined) {
      resolved.use_relative_planning = msg.use_relative_planning;
    }
    else {
      resolved.use_relative_planning = false
    }

    return resolved;
    }
};

// Constants for message
TaskCommand.Constants = {
  STATUS: 0,
  CLEAR_ESTOP: 1,
  STOP: 2,
  HOME: 10,
  BOTTLE_PREGRASP: 20,
  BOTTLE_GRASP: 21,
  CAP_PREGRASP: 30,
  CAP_GRASP: 31,
  UNSCREW: 32,
  CAP_RETREAT: 33,
  LIFT_BOTTLE: 40,
  RETURN_HOME: 50,
  RUN_BOTTLE_CAP_SEQUENCE: 100,
}

module.exports = TaskCommand;
