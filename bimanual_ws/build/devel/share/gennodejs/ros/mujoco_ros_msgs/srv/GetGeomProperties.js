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

let GeomProperties = require('../msg/GeomProperties.js');

//-----------------------------------------------------------

class GetGeomPropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.geom_name = null;
      this.admin_hash = null;
    }
    else {
      if (initObj.hasOwnProperty('geom_name')) {
        this.geom_name = initObj.geom_name
      }
      else {
        this.geom_name = '';
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
    // Serializes a message object of type GetGeomPropertiesRequest
    // Serialize message field [geom_name]
    bufferOffset = _serializer.string(obj.geom_name, buffer, bufferOffset);
    // Serialize message field [admin_hash]
    bufferOffset = _serializer.string(obj.admin_hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGeomPropertiesRequest
    let len;
    let data = new GetGeomPropertiesRequest(null);
    // Deserialize message field [geom_name]
    data.geom_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [admin_hash]
    data.admin_hash = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.geom_name);
    length += _getByteLength(object.admin_hash);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetGeomPropertiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57f0d4c01a52c15d5869d247260c475c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string geom_name
    string admin_hash
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGeomPropertiesRequest(null);
    if (msg.geom_name !== undefined) {
      resolved.geom_name = msg.geom_name;
    }
    else {
      resolved.geom_name = ''
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

class GetGeomPropertiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.properties = null;
      this.success = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = new GeomProperties();
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
    // Serializes a message object of type GetGeomPropertiesResponse
    // Serialize message field [properties]
    bufferOffset = GeomProperties.serialize(obj.properties, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGeomPropertiesResponse
    let len;
    let data = new GetGeomPropertiesResponse(null);
    // Deserialize message field [properties]
    data.properties = GeomProperties.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GeomProperties.getMessageSize(object.properties);
    length += _getByteLength(object.status_message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mujoco_ros_msgs/GetGeomPropertiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55ee8b0f1aee0c42a9390bea52b5aefb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mujoco_ros_msgs/GeomProperties properties
    bool success
    string status_message
    
    
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
    const resolved = new GetGeomPropertiesResponse(null);
    if (msg.properties !== undefined) {
      resolved.properties = GeomProperties.Resolve(msg.properties)
    }
    else {
      resolved.properties = new GeomProperties()
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
  Request: GetGeomPropertiesRequest,
  Response: GetGeomPropertiesResponse,
  md5sum() { return '39732699bb1604377c28257f0fc466f2'; },
  datatype() { return 'mujoco_ros_msgs/GetGeomProperties'; }
};
