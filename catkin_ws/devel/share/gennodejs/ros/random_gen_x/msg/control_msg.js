// Auto-generated. Do not edit!

// (in-package random_gen_x.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class control_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rand_x = null;
      this.rand_y = null;
      this.rand_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('rand_x')) {
        this.rand_x = initObj.rand_x
      }
      else {
        this.rand_x = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('rand_y')) {
        this.rand_y = initObj.rand_y
      }
      else {
        this.rand_y = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('rand_yaw')) {
        this.rand_yaw = initObj.rand_yaw
      }
      else {
        this.rand_yaw = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type control_msg
    // Serialize message field [rand_x]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.rand_x, buffer, bufferOffset);
    // Serialize message field [rand_y]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.rand_y, buffer, bufferOffset);
    // Serialize message field [rand_yaw]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.rand_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_msg
    let len;
    let data = new control_msg(null);
    // Deserialize message field [rand_x]
    data.rand_x = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [rand_y]
    data.rand_y = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [rand_yaw]
    data.rand_yaw = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'random_gen_x/control_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76856e6a7501ff768ebedc7d6ea94795';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 rand_x
    std_msgs/Float64 rand_y
    std_msgs/Float64 rand_yaw
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_msg(null);
    if (msg.rand_x !== undefined) {
      resolved.rand_x = std_msgs.msg.Float64.Resolve(msg.rand_x)
    }
    else {
      resolved.rand_x = new std_msgs.msg.Float64()
    }

    if (msg.rand_y !== undefined) {
      resolved.rand_y = std_msgs.msg.Float64.Resolve(msg.rand_y)
    }
    else {
      resolved.rand_y = new std_msgs.msg.Float64()
    }

    if (msg.rand_yaw !== undefined) {
      resolved.rand_yaw = std_msgs.msg.Float64.Resolve(msg.rand_yaw)
    }
    else {
      resolved.rand_yaw = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = control_msg;
