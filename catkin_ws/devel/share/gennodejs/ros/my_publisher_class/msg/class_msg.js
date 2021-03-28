// Auto-generated. Do not edit!

// (in-package my_publisher_class.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class class_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.float_data = null;
      this.string_data = null;
    }
    else {
      if (initObj.hasOwnProperty('float_data')) {
        this.float_data = initObj.float_data
      }
      else {
        this.float_data = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('string_data')) {
        this.string_data = initObj.string_data
      }
      else {
        this.string_data = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type class_msg
    // Serialize message field [float_data]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.float_data, buffer, bufferOffset);
    // Serialize message field [string_data]
    bufferOffset = std_msgs.msg.String.serialize(obj.string_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type class_msg
    let len;
    let data = new class_msg(null);
    // Deserialize message field [float_data]
    data.float_data = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [string_data]
    data.string_data = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.string_data);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_publisher_class/class_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82455cb8167941750708f765e66e4c5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 float_data
    std_msgs/String string_data
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new class_msg(null);
    if (msg.float_data !== undefined) {
      resolved.float_data = std_msgs.msg.Float32.Resolve(msg.float_data)
    }
    else {
      resolved.float_data = new std_msgs.msg.Float32()
    }

    if (msg.string_data !== undefined) {
      resolved.string_data = std_msgs.msg.String.Resolve(msg.string_data)
    }
    else {
      resolved.string_data = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = class_msg;
