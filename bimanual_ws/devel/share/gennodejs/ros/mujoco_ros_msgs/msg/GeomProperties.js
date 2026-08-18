// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeomType = require('./GeomType.js');

//-----------------------------------------------------------

class GeomProperties {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.body_mass = null;
      this.size_0 = null;
      this.size_1 = null;
      this.size_2 = null;
      this.friction_slide = null;
      this.friction_spin = null;
      this.friction_roll = null;
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
        this.type = new GeomType();
      }
      if (initObj.hasOwnProperty('body_mass')) {
        this.body_mass = initObj.body_mass
      }
      else {
        this.body_mass = 0.0;
      }
      if (initObj.hasOwnProperty('size_0')) {
        this.size_0 = initObj.size_0
      }
      else {
        this.size_0 = 0.0;
      }
      if (initObj.hasOwnProperty('size_1')) {
        this.size_1 = initObj.size_1
      }
      else {
        this.size_1 = 0.0;
      }
      if (initObj.hasOwnProperty('size_2')) {
        this.size_2 = initObj.size_2
      }
      else {
        this.size_2 = 0.0;
      }
      if (initObj.hasOwnProperty('friction_slide')) {
        this.friction_slide = initObj.friction_slide
      }
      else {
        this.friction_slide = 0.0;
      }
      if (initObj.hasOwnProperty('friction_spin')) {
        this.friction_spin = initObj.friction_spin
      }
      else {
        this.friction_spin = 0.0;
      }
      if (initObj.hasOwnProperty('friction_roll')) {
        this.friction_roll = initObj.friction_roll
      }
      else {
        this.friction_roll = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeomProperties
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = GeomType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [body_mass]
    bufferOffset = _serializer.float32(obj.body_mass, buffer, bufferOffset);
    // Serialize message field [size_0]
    bufferOffset = _serializer.float32(obj.size_0, buffer, bufferOffset);
    // Serialize message field [size_1]
    bufferOffset = _serializer.float32(obj.size_1, buffer, bufferOffset);
    // Serialize message field [size_2]
    bufferOffset = _serializer.float32(obj.size_2, buffer, bufferOffset);
    // Serialize message field [friction_slide]
    bufferOffset = _serializer.float32(obj.friction_slide, buffer, bufferOffset);
    // Serialize message field [friction_spin]
    bufferOffset = _serializer.float32(obj.friction_spin, buffer, bufferOffset);
    // Serialize message field [friction_roll]
    bufferOffset = _serializer.float32(obj.friction_roll, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeomProperties
    let len;
    let data = new GeomProperties(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = GeomType.deserialize(buffer, bufferOffset);
    // Deserialize message field [body_mass]
    data.body_mass = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [size_0]
    data.size_0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [size_1]
    data.size_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [size_2]
    data.size_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [friction_slide]
    data.friction_slide = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [friction_spin]
    data.friction_spin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [friction_roll]
    data.friction_roll = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mujoco_ros_msgs/GeomProperties';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf0bfaf1ba9ee978c70396532fa14531';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    mujoco_ros_msgs/GeomType type
    float32 body_mass # total mass of the body this geom belongs to
    float32 size_0
    float32 size_1
    float32 size_2
    float32 friction_slide
    float32 friction_spin
    float32 friction_roll
    
    ================================================================================
    MSG: mujoco_ros_msgs/GeomType
    uint16 value
    uint16 PLANE=0
    uint16 HFIELD=1
    uint16 SPHERE=2
    uint16 CAPSULE=3
    uint16 ELLIPSOID=4
    uint16 CYLINDER=5
    uint16 BOX=6
    uint16 MESH=7
    uint16 GEOM_NONE = 1001
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeomProperties(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = GeomType.Resolve(msg.type)
    }
    else {
      resolved.type = new GeomType()
    }

    if (msg.body_mass !== undefined) {
      resolved.body_mass = msg.body_mass;
    }
    else {
      resolved.body_mass = 0.0
    }

    if (msg.size_0 !== undefined) {
      resolved.size_0 = msg.size_0;
    }
    else {
      resolved.size_0 = 0.0
    }

    if (msg.size_1 !== undefined) {
      resolved.size_1 = msg.size_1;
    }
    else {
      resolved.size_1 = 0.0
    }

    if (msg.size_2 !== undefined) {
      resolved.size_2 = msg.size_2;
    }
    else {
      resolved.size_2 = 0.0
    }

    if (msg.friction_slide !== undefined) {
      resolved.friction_slide = msg.friction_slide;
    }
    else {
      resolved.friction_slide = 0.0
    }

    if (msg.friction_spin !== undefined) {
      resolved.friction_spin = msg.friction_spin;
    }
    else {
      resolved.friction_spin = 0.0
    }

    if (msg.friction_roll !== undefined) {
      resolved.friction_roll = msg.friction_roll;
    }
    else {
      resolved.friction_roll = 0.0
    }

    return resolved;
    }
};

module.exports = GeomProperties;
