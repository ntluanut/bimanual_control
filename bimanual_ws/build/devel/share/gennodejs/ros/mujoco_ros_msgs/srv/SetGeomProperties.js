// Auto-generated. Do not edit!

// (in-package mujoco_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeomProperties = require('../msg/GeomProperties.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetGeomPropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.properties = null;
      this.set_type = null;
      this.set_mass = null;
      this.set_friction = null;
      this.set_size = null;
      this.admin_hash = null;
    }
    else {
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = new GeomProperties();
      }
      if (initObj.hasOwnProperty('set_type')) {
        this.set_type = initObj.set_type
      }
      else {
        this.set_type = false;
      }
      if (initObj.hasOwnProperty('set_mass')) {
        this.set_mass = initObj.set_mass
      }
      else {
        this.set_mass = false;
      }
      if (initObj.hasOwnProperty('set_friction')) {
        this.set_friction = initObj.set_friction
      }
      else {
        this.set_friction = false;
      }
      if (initObj.hasOwnProperty('set_size')) {
        this.set_size = initObj.set_size
      }
      else {
        this.set_size = false;
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
    // Serializes a message object of type SetGeomPropertiesRequest
    // Serialize message field [properties]
    bufferOffset = GeomProperties.serialize(obj.properties, buffer, bufferOffset);
    // Serialize message field [set_type]
    bufferOffset = _serializer.bool(obj.set_type, buffer, bufferOffset);
    // Serialize message field [set_mass]
    bufferOffset = _serializer.bool(obj.set_mass, buffer, bufferOffset);
    // Serialize message field [set_friction]
    bufferOffset = _serializer.bool(obj.set_friction, buffer, bufferOffset);
    // Serialize message field [set_size]
    bufferOffset = _serializer.bool(obj.set_size, buffer, bufferOffset);
    // Serialize message field [admin_hash]
    bufferOffset = _serializer.string(obj.admin_hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGeomPropertiesRequest
    let len;
    let data = new SetGeomPropertiesRequest(null);
    // Deserialize message field [properties]
    data.properties = GeomProperties.deserialize(buffer, bufferOffset);
    // Deserialize message field [set_type]
    data.set_type = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_mass]
    data.set_mass = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_friction]
    data.set_friction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_size]
    data.set_size = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [admin_hash]
    data.admin_hash = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GeomProperties.getMessageSize(object.properties);
    length += _getByteLength(object.admin_hash);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/SetGeomPropertiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7392884a61a949dc38b820d99922e7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/GeomProperties properties
    bool set_type
    bool set_mass
    bool set_friction
    bool set_size
    string admin_hash
    
    ================================================================================
    MSG: mujoco_ros_msgs/GeomProperties
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
    const resolved = new SetGeomPropertiesRequest(null);
    if (msg.properties !== undefined) {
      resolved.properties = GeomProperties.Resolve(msg.properties)
    }
    else {
      resolved.properties = new GeomProperties()
    }

    if (msg.set_type !== undefined) {
      resolved.set_type = msg.set_type;
    }
    else {
      resolved.set_type = false
    }

    if (msg.set_mass !== undefined) {
      resolved.set_mass = msg.set_mass;
    }
    else {
      resolved.set_mass = false
    }

    if (msg.set_friction !== undefined) {
      resolved.set_friction = msg.set_friction;
    }
    else {
      resolved.set_friction = false
    }

    if (msg.set_size !== undefined) {
      resolved.set_size = msg.set_size;
    }
    else {
      resolved.set_size = false
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

class SetGeomPropertiesResponse {
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
    // Serializes a message object of type SetGeomPropertiesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGeomPropertiesResponse
    let len;
    let data = new SetGeomPropertiesResponse(null);
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
    return 'mujoco_ros_msgs/SetGeomPropertiesResponse';
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
    const resolved = new SetGeomPropertiesResponse(null);
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
  Request: SetGeomPropertiesRequest,
  Response: SetGeomPropertiesResponse,
  md5sum() { return 'a7072e8bafa01bef541263a9142aa174'; },
  datatype() { return 'mujoco_ros_msgs/SetGeomProperties'; }
};
