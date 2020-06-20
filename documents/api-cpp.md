---
layout: default
title: API for C++
---

# Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`namespace `[`colonio`](#namespacecolonio) | All the functions of colonio are defined in the colonio namespace.
`namespace `[`colonio::DebugEvent`](#namespacecolonio_1_1DebugEvent) | [DebugEvent](#namespacecolonio_1_1DebugEvent) is going to be removed and is deprecated.

# namespace `colonio` {#namespacecolonio}

All the functions of colonio are defined in the colonio namespace.

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`enum `[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)            | ErrorCode is assigned each error reason and is used with [Error](#classcolonio_1_1Error) and [Exception](#classcolonio_1_1Exception).
`enum `[`LogLevel`](#namespacecolonio_1a6ad292aec392dc3caf68037aa1f04839)            | The urgency of the log.
`class `[`colonio::Colonio`](#classcolonio_1_1Colonio) | Main class of colonio. One instance is equivalent to one node.
`class `[`colonio::Error`](#classcolonio_1_1Error) | [Error](#classcolonio_1_1Error) information. This is used when the asynchronous method calls a failed callback.
`class `[`colonio::Exception`](#classcolonio_1_1Exception) | [Error](#classcolonio_1_1Error) information. This exception is thrown when an error occurs in a synchronous method.
`class `[`colonio::Map`](#classcolonio_1_1Map) | Under developing.
`class `[`colonio::Pubsub2D`](#classcolonio_1_1Pubsub2D) | [Pubsub2D](#classcolonio_1_1Pubsub2D) is a module to implement publish–subscribe using 2D coordinate information.
`class `[`colonio::Value`](#classcolonio_1_1Value) | Values in colonio are represented as instance of colino::Value class.

## Members

### `enum `[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9) {#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9}

 Values                         | Descriptions                                
--------------------------------|---------------------------------------------
UNDEFINED            | Undefined error is occured.
SYSTEM_ERROR            | An error occurred in the API, which is used inside colonio.
OFFLINE            | The node cannot perform processing because of offline.
INCORRECT_DATA_FORMAT            | Incorrect data format detected.
CONFLICT_WITH_SETTING            | The calling method or setting parameter was inconsistent with the configuration in the seed.
NOT_EXIST_KEY            | Tried to get a value for a key that doesn't exist.
EXIST_KEY            | Under developing.
CHANGED_PROPOSER            | Under developing.
COLLISION_LATE            | Under developing.
NO_ONE_RECV            | There was no node receiving the message.

ErrorCode is assigned each error reason and is used with [Error](#classcolonio_1_1Error) and [Exception](#classcolonio_1_1Exception).

**See also**: [Error](#classcolonio_1_1Error), [Exception](#classcolonio_1_1Exception)

### `enum `[`LogLevel`](#namespacecolonio_1a6ad292aec392dc3caf68037aa1f04839) {#namespacecolonio_1a6ad292aec392dc3caf68037aa1f04839}

 Values                         | Descriptions                                
--------------------------------|---------------------------------------------
INFO            | Logs of normal operations.
WARN            | Logs errors that do not require program interruption.
ERROR            | Logs errors that require end of colonio.
DEBUG            | Logs for debugging, This is output only when build with debug flag.

The urgency of the log.

**See also**: [Colonio::on_output_log](#classcolonio_1_1Colonio_1abdd7604c651c8b86ff61a93036e6e3a6)

# class `colonio::Colonio` {#classcolonio_1_1Colonio}

Main class of colonio. One instance is equivalent to one node.

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`Colonio`](#classcolonio_1_1Colonio_1a0e1ca3757b74c464649f99de2a1a17a0)`()` | Construct a new [Colonio](#classcolonio_1_1Colonio) object.
`public virtual  `[`~Colonio`](#classcolonio_1_1Colonio_1aca8b0075cfc000365de091305b438650)`()` | Destroy the [Colonio](#classcolonio_1_1Colonio) object.
`public `[`Map`](#classcolonio_1_1Map)` & `[`access_map`](#classcolonio_1_1Colonio_1a190846116fb832e5bf385ca753d8f08a)`(const std::string & name)` | Get a [Map](#classcolonio_1_1Map) accessor.
`public `[`Pubsub2D`](#classcolonio_1_1Pubsub2D)` & `[`access_pubsub_2d`](#classcolonio_1_1Colonio_1a0ab71c30a4bf205c156b10526297c293)`(const std::string & name)` | Get a Pubusb2D accessor.
`public void `[`connect`](#classcolonio_1_1Colonio_1a59abdab657e93583613b926d8d334854)`(const std::string & url,const std::string & token)` | Connect to seed and join the cluster.
`public void `[`connect`](#classcolonio_1_1Colonio_1acece3ceacb79bb34a60fceb375e61c8c)`(const std::string & url,const std::string & token,std::function< void(`[`Colonio`](#classcolonio_1_1Colonio) &)`> on_success,std::function< void(`[`Colonio`](#classcolonio_1_1Colonio) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` | Connect to seed and join the cluster asynchronously.
`public void `[`disconnect`](#classcolonio_1_1Colonio_1ac66d68bfe5d9aac460956d687986d608)`()` | Disconnect from the cluster and the seed.
`public std::string `[`get_local_nid`](#classcolonio_1_1Colonio_1aaf792c711282b9e522f4e6cce647c90f)`()` | Get the node-id of this node.
`public std::tuple< double, double > `[`set_position`](#classcolonio_1_1Colonio_1ac9ed9c17028f5e71c397cedaa8f5c52c)`(double x,double y)` | Sets the current position of the node.
`public void `[`set_position`](#classcolonio_1_1Colonio_1a977ad76f5be615e574a2762db9ce4501)`(double x,double y,std::function< void(`[`Colonio`](#classcolonio_1_1Colonio) &, double, double)`> on_success,std::function< void(`[`Colonio`](#classcolonio_1_1Colonio) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` | Sets the current position of the node asynchronously.
`protected virtual void `[`on_output_log`](#classcolonio_1_1Colonio_1abdd7604c651c8b86ff61a93036e6e3a6)`(`[`LogLevel`](#namespacecolonio_1a6ad292aec392dc3caf68037aa1f04839)` level,const std::string & message)` | You can set the log output destination by overriding this method.
`protected virtual void `[`on_debug_event`](#classcolonio_1_1Colonio_1a4154bc008776063b2a509e38b206113c)`(DebugEvent::Type event,const std::string & json)` | on_debug_event is going to be removed and is deprecated.

## Members

### `public  `[`Colonio`](#classcolonio_1_1Colonio_1a0e1ca3757b74c464649f99de2a1a17a0)`()` {#classcolonio_1_1Colonio_1a0e1ca3757b74c464649f99de2a1a17a0}

Construct a new [Colonio](#classcolonio_1_1Colonio) object.

### `public virtual  `[`~Colonio`](#classcolonio_1_1Colonio_1aca8b0075cfc000365de091305b438650)`()` {#classcolonio_1_1Colonio_1aca8b0075cfc000365de091305b438650}

Destroy the [Colonio](#classcolonio_1_1Colonio) object.

Run disconnect if necessary.

**See also**: [disconnect()](#classcolonio_1_1Colonio_1ac66d68bfe5d9aac460956d687986d608)

### `public `[`Map`](#classcolonio_1_1Map)` & `[`access_map`](#classcolonio_1_1Colonio_1a190846116fb832e5bf385ca753d8f08a)`(const std::string & name)` {#classcolonio_1_1Colonio_1a190846116fb832e5bf385ca753d8f08a}

Get a [Map](#classcolonio_1_1Map) accessor.

#### Parameters
* `name` The assigned name for the accessor. 

#### Returns
[Map](#classcolonio_1_1Map)& Reference for the accessor.

**The [Map](#classcolonio_1_1Map) accessor is under development and is likely to change.**

Get [Map](#classcolonio_1_1Map) accessor associated with the name. If you get an ACCESSOR with the same name, the reference to the same instance will return. [Map](#classcolonio_1_1Map)'s name and other parameters, pre-set to seed, are applied. If accessor is not set, [Exception](#classcolonio_1_1Exception) will be throw.

**See also**: [Map](#classcolonio_1_1Map)

### `public `[`Pubsub2D`](#classcolonio_1_1Pubsub2D)` & `[`access_pubsub_2d`](#classcolonio_1_1Colonio_1a0ab71c30a4bf205c156b10526297c293)`(const std::string & name)` {#classcolonio_1_1Colonio_1a0ab71c30a4bf205c156b10526297c293}

Get a Pubusb2D accessor.

#### Parameters
* `name` The assigned name for the accessor. 

#### Returns
[Pubsub2D](#classcolonio_1_1Pubsub2D)& Reference for the accessor.

Get [Pubsub2D](#classcolonio_1_1Pubsub2D) accessor associated with the name. If you get an ACCESSOR with the same name, the reference to the same instance will return. [Pubsub2D](#classcolonio_1_1Pubsub2D)'s name and other parameters, pre-set to seed, are applied. If accessor is not set, [Exception](#classcolonio_1_1Exception) will be throw.

**See also**: [Pubsub2D](#classcolonio_1_1Pubsub2D)

### `public void `[`connect`](#classcolonio_1_1Colonio_1a59abdab657e93583613b926d8d334854)`(const std::string & url,const std::string & token)` {#classcolonio_1_1Colonio_1a59abdab657e93583613b926d8d334854}

Connect to seed and join the cluster.

#### Parameters
* `url` Set the URL of the seed. e.g. "wss://host:1234/path". 

* `token` token does not use. This is an argument for future expansion.

Connect to the seed. Also, if there are already other nodes forming a cluster, join them. This method works synchronously and waits for the connection to the cluster to be established. If this method is successful, it will automatically reconnect until disconnect will be called. If you want to work asynchronously, use a asynchronous connect method instead. This method throws [Exception](#classcolonio_1_1Exception) when an error occurs. At successful completion, nothing is returned.

**See also**: [Colonio::connect](#classcolonio_1_1Colonio_1a59abdab657e93583613b926d8d334854)(const std::string& url, const std::string& token, std::function<void(Colonio&)> on_success, std::function<void(Colonio&, const Error&)> on_failure)

### `public void `[`connect`](#classcolonio_1_1Colonio_1acece3ceacb79bb34a60fceb375e61c8c)`(const std::string & url,const std::string & token,std::function< void(`[`Colonio`](#classcolonio_1_1Colonio) &)`> on_success,std::function< void(`[`Colonio`](#classcolonio_1_1Colonio) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` {#classcolonio_1_1Colonio_1acece3ceacb79bb34a60fceb375e61c8c}

Connect to seed and join the cluster asynchronously.

#### Parameters
* `url` Set the URL of the seed. e.g. "wss://host:1234/path". 

* `token` token does not use. This is an argument for future expansion. 

* `on_success` The function will call when success to connect. 

* `on_failure` The function will call when failure to connect with error information.

The main purpose of the function is the same as [connect(const std::string& url, const std::string& token)](#classcolonio_1_1Colonio_1a59abdab657e93583613b926d8d334854). This method works asynchronously, and the method returns immediately. Note that the specified callback function is called in a separate thread for processing.

**See also**: [connect(const std::string& url, const std::string& token)](#classcolonio_1_1Colonio_1a59abdab657e93583613b926d8d334854)

### `public void `[`disconnect`](#classcolonio_1_1Colonio_1ac66d68bfe5d9aac460956d687986d608)`()` {#classcolonio_1_1Colonio_1ac66d68bfe5d9aac460956d687986d608}

Disconnect from the cluster and the seed.

This method works synchronously, it will wait for disconnecting and finish thread to process. This method must not be used in any other callback in colonio because of stopping the thread and releasing resources. Once a disconnected colonio instance is reused, it is not guaranteed to work. This method throws [Exception](#classcolonio_1_1Exception) when an error occurs. At successful completion, nothing is returned.

### `public std::string `[`get_local_nid`](#classcolonio_1_1Colonio_1aaf792c711282b9e522f4e6cce647c90f)`()` {#classcolonio_1_1Colonio_1aaf792c711282b9e522f4e6cce647c90f}

Get the node-id of this node.

The node-id is unique in the cluster. A new ID will be assigned to the node when connect.

#### Returns
std::string The node-id of this node.

### `public std::tuple< double, double > `[`set_position`](#classcolonio_1_1Colonio_1ac9ed9c17028f5e71c397cedaa8f5c52c)`(double x,double y)` {#classcolonio_1_1Colonio_1ac9ed9c17028f5e71c397cedaa8f5c52c}

Sets the current position of the node.

This method is only available if Pubsub2d is enabled. The coordinate system depends on the settings in seed. This method works synchronously, If you want to work asynchronously, use a asynchronous set_position method instead.

#### Parameters
* `x` Horizontal coordinate. 

* `y` Vertical coordinate. 

#### Returns
std::tuple<double, double> The rounded coordinates will be returned to the input coordinates.

**See also**: [Pubsub2D](#classcolonio_1_1Pubsub2D), [set_position](#classcolonio_1_1Colonio_1ac9ed9c17028f5e71c397cedaa8f5c52c)( double x, double y, std::function<void(Colonio&, double, double)> on_success, std::function<void(Colonio&, const Error&)> on_failure);

### `public void `[`set_position`](#classcolonio_1_1Colonio_1a977ad76f5be615e574a2762db9ce4501)`(double x,double y,std::function< void(`[`Colonio`](#classcolonio_1_1Colonio) &, double, double)`> on_success,std::function< void(`[`Colonio`](#classcolonio_1_1Colonio) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` {#classcolonio_1_1Colonio_1a977ad76f5be615e574a2762db9ce4501}

Sets the current position of the node asynchronously.

The main purpose of the function is the same as [set_position(double x, double y)](#classcolonio_1_1Colonio_1ac9ed9c17028f5e71c397cedaa8f5c52c). This method works asynchronously, and the method returns immediately. Note that the specified callback function is called in a separate thread for processing.

#### Parameters
* `x` Horizontal coordinate. 

* `y` Vertical coordinate. 

* `on_success` The function will call when success to set the current position. 

* `on_failure` The function will call when failure to set the current position.

**See also**: [Pubsub2D](#classcolonio_1_1Pubsub2D), [set_position(double x, double y)](#classcolonio_1_1Colonio_1ac9ed9c17028f5e71c397cedaa8f5c52c)

### `protected virtual void `[`on_output_log`](#classcolonio_1_1Colonio_1abdd7604c651c8b86ff61a93036e6e3a6)`(`[`LogLevel`](#namespacecolonio_1a6ad292aec392dc3caf68037aa1f04839)` level,const std::string & message)` {#classcolonio_1_1Colonio_1abdd7604c651c8b86ff61a93036e6e3a6}

You can set the log output destination by overriding this method.

This method is executed in a specific thread and must be exclusive if required.

#### Parameters
* `level` Log level. 

* `message` Log message.

### `protected virtual void `[`on_debug_event`](#classcolonio_1_1Colonio_1a4154bc008776063b2a509e38b206113c)`(DebugEvent::Type event,const std::string & json)` {#classcolonio_1_1Colonio_1a4154bc008776063b2a509e38b206113c}

on_debug_event is going to be removed and is deprecated.

#### Parameters
* `event` Event type. 

* `json` JSON formatted information.

# class `colonio::Error` {#classcolonio_1_1Error}

[Error](#classcolonio_1_1Error) information. This is used when the asynchronous method calls a failed callback.

The code and message are set to the same content as the [Exception](#classcolonio_1_1Exception).

**See also**: [ErrorCode](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9), [Exception](#classcolonio_1_1Exception)

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public const `[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)` `[`code`](#classcolonio_1_1Error_1ae51c58374a1099c86e26bffb5c39e5e5) | Code to indicate the cause of the error.
`public const std::string `[`message`](#classcolonio_1_1Error_1a7bb5a2b5e0bca49b784c65a61da3e319) | A detailed message string for display or bug report.
`public  explicit `[`Error`](#classcolonio_1_1Error_1a6bc88366975c17aa4390bb323b6efd49)`(`[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)` code_,const std::string & message_)` | Construct a new [Error](#classcolonio_1_1Error) object.

## Members

### `public const `[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)` `[`code`](#classcolonio_1_1Error_1ae51c58374a1099c86e26bffb5c39e5e5) {#classcolonio_1_1Error_1ae51c58374a1099c86e26bffb5c39e5e5}

Code to indicate the cause of the error.

### `public const std::string `[`message`](#classcolonio_1_1Error_1a7bb5a2b5e0bca49b784c65a61da3e319) {#classcolonio_1_1Error_1a7bb5a2b5e0bca49b784c65a61da3e319}

A detailed message string for display or bug report.

### `public  explicit `[`Error`](#classcolonio_1_1Error_1a6bc88366975c17aa4390bb323b6efd49)`(`[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)` code_,const std::string & message_)` {#classcolonio_1_1Error_1a6bc88366975c17aa4390bb323b6efd49}

Construct a new [Error](#classcolonio_1_1Error) object.

#### Parameters
* `code_` Code to indicate the cause of the error. 

* `message_` A detailed message string for display or bug report.

# class `colonio::Exception` {#classcolonio_1_1Exception}

```
class colonio::Exception
  : public exception
```  

[Error](#classcolonio_1_1Error) information. This exception is thrown when an error occurs in a synchronous method.

The code and message are set to the same content as the [Error](#classcolonio_1_1Error).

**See also**: [Error](#classcolonio_1_1Error), [ErrorCode](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public const `[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)` `[`code`](#classcolonio_1_1Exception_1abefcf2fb97a21cf4e2f54d19fe0b55d1) | Code to indicate the cause of the error.
`public const std::string `[`message`](#classcolonio_1_1Exception_1a9af933db4145cc76f3d7307d73e616e7) | A detailed message string for display or bug report.
`public  explicit `[`Exception`](#classcolonio_1_1Exception_1ac9c58cc8b87d15b82f641c26ba22acea)`(`[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)` code_,const std::string & message_)` | Construct a new [Exception](#classcolonio_1_1Exception) object.
`public const char * `[`what`](#classcolonio_1_1Exception_1ad00944bf78e9b635f13cd1ad909a8389)`() const` | Override the standard method to output message.

## Members

### `public const `[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)` `[`code`](#classcolonio_1_1Exception_1abefcf2fb97a21cf4e2f54d19fe0b55d1) {#classcolonio_1_1Exception_1abefcf2fb97a21cf4e2f54d19fe0b55d1}

Code to indicate the cause of the error.

### `public const std::string `[`message`](#classcolonio_1_1Exception_1a9af933db4145cc76f3d7307d73e616e7) {#classcolonio_1_1Exception_1a9af933db4145cc76f3d7307d73e616e7}

A detailed message string for display or bug report.

### `public  explicit `[`Exception`](#classcolonio_1_1Exception_1ac9c58cc8b87d15b82f641c26ba22acea)`(`[`ErrorCode`](#namespacecolonio_1a118404b77b602b5b501e4851fd44cba9)` code_,const std::string & message_)` {#classcolonio_1_1Exception_1ac9c58cc8b87d15b82f641c26ba22acea}

Construct a new [Exception](#classcolonio_1_1Exception) object.

#### Parameters
* `code_` Code to indicate the cause of the error. 

* `message_` A detailed message string for display or bug report.

### `public const char * `[`what`](#classcolonio_1_1Exception_1ad00944bf78e9b635f13cd1ad909a8389)`() const` {#classcolonio_1_1Exception_1ad00944bf78e9b635f13cd1ad909a8389}

Override the standard method to output message.

#### Returns
const char* The message is returned as it is.

# class `colonio::Map` {#classcolonio_1_1Map}

Under developing.

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public virtual  `[`~Map`](#classcolonio_1_1Map_1a71a95322c18723e9e3407951d45bc98a)`()` | 
`public `[`Value`](#classcolonio_1_1Value)` `[`get`](#classcolonio_1_1Map_1ac11f1a81c7dc59e167f3a85a859c57d0)`(const `[`Value`](#classcolonio_1_1Value)` & key)` | 
`public void `[`get`](#classcolonio_1_1Map_1a77fb6c54531290e8eeb42b80e9573d30)`(const `[`Value`](#classcolonio_1_1Value)` & key,std::function< void(`[`Map`](#classcolonio_1_1Map) &, const [`Value`](#classcolonio_1_1Value) &)`> on_success,std::function< void(`[`Map`](#classcolonio_1_1Map) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` | 
`public void `[`set`](#classcolonio_1_1Map_1a71decec914384dabab02bcd9752fd40d)`(const `[`Value`](#classcolonio_1_1Value)` & key,const `[`Value`](#classcolonio_1_1Value)` & value,uint32_t opt)` | 
`public void `[`set`](#classcolonio_1_1Map_1af955674ef5839ecee0b89913fe4396f6)`(const `[`Value`](#classcolonio_1_1Value)` & key,const `[`Value`](#classcolonio_1_1Value)` & value,uint32_t opt,std::function< void(`[`Map`](#classcolonio_1_1Map) &)`> on_success,std::function< void(`[`Map`](#classcolonio_1_1Map) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` | 

## Members

### `public virtual  `[`~Map`](#classcolonio_1_1Map_1a71a95322c18723e9e3407951d45bc98a)`()` {#classcolonio_1_1Map_1a71a95322c18723e9e3407951d45bc98a}

### `public `[`Value`](#classcolonio_1_1Value)` `[`get`](#classcolonio_1_1Map_1ac11f1a81c7dc59e167f3a85a859c57d0)`(const `[`Value`](#classcolonio_1_1Value)` & key)` {#classcolonio_1_1Map_1ac11f1a81c7dc59e167f3a85a859c57d0}

### `public void `[`get`](#classcolonio_1_1Map_1a77fb6c54531290e8eeb42b80e9573d30)`(const `[`Value`](#classcolonio_1_1Value)` & key,std::function< void(`[`Map`](#classcolonio_1_1Map) &, const [`Value`](#classcolonio_1_1Value) &)`> on_success,std::function< void(`[`Map`](#classcolonio_1_1Map) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` {#classcolonio_1_1Map_1a77fb6c54531290e8eeb42b80e9573d30}

### `public void `[`set`](#classcolonio_1_1Map_1a71decec914384dabab02bcd9752fd40d)`(const `[`Value`](#classcolonio_1_1Value)` & key,const `[`Value`](#classcolonio_1_1Value)` & value,uint32_t opt)` {#classcolonio_1_1Map_1a71decec914384dabab02bcd9752fd40d}

### `public void `[`set`](#classcolonio_1_1Map_1af955674ef5839ecee0b89913fe4396f6)`(const `[`Value`](#classcolonio_1_1Value)` & key,const `[`Value`](#classcolonio_1_1Value)` & value,uint32_t opt,std::function< void(`[`Map`](#classcolonio_1_1Map) &)`> on_success,std::function< void(`[`Map`](#classcolonio_1_1Map) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` {#classcolonio_1_1Map_1af955674ef5839ecee0b89913fe4396f6}

# class `colonio::Pubsub2D` {#classcolonio_1_1Pubsub2D}

[Pubsub2D](#classcolonio_1_1Pubsub2D) is a module to implement publish–subscribe using 2D coordinate information.

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public virtual  `[`~Pubsub2D`](#classcolonio_1_1Pubsub2D_1a9faa42e5a18ccef2acac80240c000e87)`()` | Destroy the Pubsub 2D object You don't need to be aware of the destructor, since module is used as a reference type.
`public void `[`publish`](#classcolonio_1_1Pubsub2D_1a99fe57194ac5d6054e6b167079a99ff7)`(const std::string & name,double x,double y,double r,const `[`Value`](#classcolonio_1_1Value)` & value,uint32_t opt)` | Send a message to the specified coordinates.
`public void `[`publish`](#classcolonio_1_1Pubsub2D_1a8215b4dfb67ea677e24edf00b158e183)`(const std::string & name,double x,double y,double r,const `[`Value`](#classcolonio_1_1Value)` & value,uint32_t opt,std::function< void(`[`Pubsub2D`](#classcolonio_1_1Pubsub2D) &)`> on_success,std::function< void(`[`Pubsub2D`](#classcolonio_1_1Pubsub2D) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` | Send a message to the specified coordinates asynchronously.
`public void `[`on`](#classcolonio_1_1Pubsub2D_1af431d7c9d8383da0726a20a7354b173f)`(const std::string & name,const std::function< void(const `[`Value`](#classcolonio_1_1Value) &)`> & subscriber)` | Register a callback function for receiving messages.
`public void `[`off`](#classcolonio_1_1Pubsub2D_1af81639acb7de978b80c0f49012ac586d)`(const std::string & name)` | Cancel a registered function using the [on](#classcolonio_1_1Pubsub2D_1af431d7c9d8383da0726a20a7354b173f) method.

## Members

### `public virtual  `[`~Pubsub2D`](#classcolonio_1_1Pubsub2D_1a9faa42e5a18ccef2acac80240c000e87)`()` {#classcolonio_1_1Pubsub2D_1a9faa42e5a18ccef2acac80240c000e87}

Destroy the Pubsub 2D object You don't need to be aware of the destructor, since module is used as a reference type.

### `public void `[`publish`](#classcolonio_1_1Pubsub2D_1a99fe57194ac5d6054e6b167079a99ff7)`(const std::string & name,double x,double y,double r,const `[`Value`](#classcolonio_1_1Value)` & value,uint32_t opt)` {#classcolonio_1_1Pubsub2D_1a99fe57194ac5d6054e6b167079a99ff7}

Send a message to the specified coordinates.

This method tries to send a message to all nodes within the specified coordinates `x`,`y` and radius `r`. The coordinate of the node on the receiving side is specified by [Colonio::set_position](#classcolonio_1_1Colonio_1ac9ed9c17028f5e71c397cedaa8f5c52c). The function set by the ON method with each `name` will be called in the receiver node.

* If you send more than one message, the order in which it is received is not guaranteed.

* The calculation of coordinates `x`,`y` and radius `r` is based on the coordinate system set by seed.

* This method works synchronously, If you want to work asynchronously, use a asynchronous publish method instead.

About success/failure, if RAISE_NO_ONE_RECV option is specified, a NO_ONE_RECV error will be returned if there are no nodes in the specified coordinates, or if a message is received by at least one node.

#### Parameters
* `name` Name used to filter messages. 

* `x` The center X coordinate of the message destination. 

* `y` The center Y coordinate of the message destination. 

* `r` The message destination radius. 

* `value` The message to be sent. 

* `opt` Individual options.

**See also**: void [publish](#classcolonio_1_1Pubsub2D_1a99fe57194ac5d6054e6b167079a99ff7)( const std::string& name, double x, double y, double r, const [Value](#classcolonio_1_1Value)& value, uint32_t opt, std::function<void(Pubsub2D&)> on_success, std::function<void(Pubsub2D&, const Error&)> on_failure)

### `public void `[`publish`](#classcolonio_1_1Pubsub2D_1a8215b4dfb67ea677e24edf00b158e183)`(const std::string & name,double x,double y,double r,const `[`Value`](#classcolonio_1_1Value)` & value,uint32_t opt,std::function< void(`[`Pubsub2D`](#classcolonio_1_1Pubsub2D) &)`> on_success,std::function< void(`[`Pubsub2D`](#classcolonio_1_1Pubsub2D) &, const [`Error`](#classcolonio_1_1Error) &)`> on_failure)` {#classcolonio_1_1Pubsub2D_1a8215b4dfb67ea677e24edf00b158e183}

Send a message to the specified coordinates asynchronously.

The main purpose of the function is the same as [publish](#classcolonio_1_1Pubsub2D_1a99fe57194ac5d6054e6b167079a99ff7)(const std::string& name, double x, double y, double r, const [Value](#classcolonio_1_1Value)& value, uint32_t opt) This method works asynchronously, and the method returns immediately. Note that the specified callback function is called in a separate thread for processing.

#### Parameters
* `name` Name used to filter messages. 

* `x` The center X coordinate of the message destination. 

* `y` The center Y coordinate of the message destination. 

* `r` The message destination radius. 

* `value` The message to be sent. 

* `opt` Individual options. 

* `on_success` The function will call when success to send the message. 

* `on_failure` The function will call when failure to send the message.

### `public void `[`on`](#classcolonio_1_1Pubsub2D_1af431d7c9d8383da0726a20a7354b173f)`(const std::string & name,const std::function< void(const `[`Value`](#classcolonio_1_1Value) &)`> & subscriber)` {#classcolonio_1_1Pubsub2D_1af431d7c9d8383da0726a20a7354b173f}

Register a callback function for receiving messages.

Register a function to receive messages of the same name sent using the publish method. If this method is called with the same name, only the later registered function is valid. The registered function is called continuously until the [off](#classcolonio_1_1Pubsub2D_1af81639acb7de978b80c0f49012ac586d) method is used to release it.

#### Parameters
* `name` Name used to filter messages. 

* `subscriber` Subscriber function.

### `public void `[`off`](#classcolonio_1_1Pubsub2D_1af81639acb7de978b80c0f49012ac586d)`(const std::string & name)` {#classcolonio_1_1Pubsub2D_1af81639acb7de978b80c0f49012ac586d}

Cancel a registered function using the [on](#classcolonio_1_1Pubsub2D_1af431d7c9d8383da0726a20a7354b173f) method.

#### Parameters
* `name` Name used to filter messages.

# class `colonio::Value` {#classcolonio_1_1Value}

Values in colonio are represented as instance of colino::Value class.

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`Value`](#classcolonio_1_1Value_1adf1200f3ee94898de386576ed714502c)`()` | 
`public  `[`Value`](#classcolonio_1_1Value_1a9d0b1c9122d8c86ab3efd9469bb831bf)`(const `[`Value`](#classcolonio_1_1Value)` & src)` | Copy construct a new [Value](#classcolonio_1_1Value) object.
`public  explicit `[`Value`](#classcolonio_1_1Value_1a30a3af6e49788ae9cbdf1586f2b8c12a)`(bool v)` | Construct a new boolean [Value](#classcolonio_1_1Value) object.
`public  explicit `[`Value`](#classcolonio_1_1Value_1a0d51df4620ae66b05423ac0545b8a2ba)`(int64_t v)` | Construct a new integer [Value](#classcolonio_1_1Value) object.
`public  explicit `[`Value`](#classcolonio_1_1Value_1aa57f22c50677ee221b05f85013cadf53)`(double v)` | Construct a new float number [Value](#classcolonio_1_1Value) object.
`public  explicit `[`Value`](#classcolonio_1_1Value_1a49d991d7cc36fabdd3a59ebae4d84615)`(const char * v)` | Construct a new string [Value](#classcolonio_1_1Value) object.
`public  explicit `[`Value`](#classcolonio_1_1Value_1ac917a8642b786fdf7d92fa2f7526000e)`(const std::string & v)` | Construct a new string or byte array [Value](#classcolonio_1_1Value) object.
`public virtual  `[`~Value`](#classcolonio_1_1Value_1ada8ac5e3c87032d16975d52cd2641814)`()` | 
`public `[`Value`](#classcolonio_1_1Value)` & `[`operator=`](#classcolonio_1_1Value_1a73b88558b3ab55c9555c4ba2f7d35253)`(const `[`Value`](#classcolonio_1_1Value)` & src)` | Copy operation.
`public bool `[`operator<`](#classcolonio_1_1Value_1a7fd077923b0cf7306254d75269ff30c2)`(const `[`Value`](#classcolonio_1_1Value)` & b) const` | Implementation of comparison operations for std::map and other algorithms.
`public template<>`  <br/>`const T & `[`get`](#classcolonio_1_1Value_1a19c9f47a17504d2229fd20e56035bb16)`() const` | Extract the actual value from the object.
`public template<>`  <br/>`T & `[`get`](#classcolonio_1_1Value_1a1d2d2b8333ddc5cca88255ac8ead65d1)`()` | Extract the actual value from the object.
`public `[`Type`](#classcolonio_1_1Value_1a3906898bf51582a3c6b2c419a2dc5aef)` `[`get_type`](#classcolonio_1_1Value_1ab4d35438fcc79461b56163b121019eea)`() const` | Get the type stored by [Value](#classcolonio_1_1Value) object.
`public void `[`reset`](#classcolonio_1_1Value_1a3c10785cff62a86ac6d2402c4172cfce)`()` | Reset the value stored by [Value](#classcolonio_1_1Value) to null.
`public void `[`set`](#classcolonio_1_1Value_1a11fbce54ff85b5c0fbc9f782cd3dcc33)`(bool v)` | Set a new boolean value for [Value](#classcolonio_1_1Value) object.
`public void `[`set`](#classcolonio_1_1Value_1a59dfb7e48832839356c77cc3fc06b9b5)`(int64_t v)` | Set a new integer value for [Value](#classcolonio_1_1Value) object.
`public void `[`set`](#classcolonio_1_1Value_1a4e81ea03ed4e43c2d0f298e40717baf3)`(double v)` | Set a new float number value for [Value](#classcolonio_1_1Value) object.
`public void `[`set`](#classcolonio_1_1Value_1aab8d7a46c3c4f73450a6c37b387191d8)`(const std::string & v)` | Set a new string or byte array for [Value](#classcolonio_1_1Value) object.
`enum `[`Type`](#classcolonio_1_1Value_1a3906898bf51582a3c6b2c419a2dc5aef) | It represents the type that the [Value](#classcolonio_1_1Value) has.

## Members

### `public  `[`Value`](#classcolonio_1_1Value_1adf1200f3ee94898de386576ed714502c)`()` {#classcolonio_1_1Value_1adf1200f3ee94898de386576ed714502c}

### `public  `[`Value`](#classcolonio_1_1Value_1a9d0b1c9122d8c86ab3efd9469bb831bf)`(const `[`Value`](#classcolonio_1_1Value)` & src)` {#classcolonio_1_1Value_1a9d0b1c9122d8c86ab3efd9469bb831bf}

Copy construct a new [Value](#classcolonio_1_1Value) object.

#### Parameters
* `src` The copy source object.

### `public  explicit `[`Value`](#classcolonio_1_1Value_1a30a3af6e49788ae9cbdf1586f2b8c12a)`(bool v)` {#classcolonio_1_1Value_1a30a3af6e49788ae9cbdf1586f2b8c12a}

Construct a new boolean [Value](#classcolonio_1_1Value) object.

#### Parameters
* `v` The source value of the object.

### `public  explicit `[`Value`](#classcolonio_1_1Value_1a0d51df4620ae66b05423ac0545b8a2ba)`(int64_t v)` {#classcolonio_1_1Value_1a0d51df4620ae66b05423ac0545b8a2ba}

Construct a new integer [Value](#classcolonio_1_1Value) object.

#### Parameters
* `v` The source value of the object.

### `public  explicit `[`Value`](#classcolonio_1_1Value_1aa57f22c50677ee221b05f85013cadf53)`(double v)` {#classcolonio_1_1Value_1aa57f22c50677ee221b05f85013cadf53}

Construct a new float number [Value](#classcolonio_1_1Value) object.

#### Parameters
* `v` The source value of the object.

### `public  explicit `[`Value`](#classcolonio_1_1Value_1a49d991d7cc36fabdd3a59ebae4d84615)`(const char * v)` {#classcolonio_1_1Value_1a49d991d7cc36fabdd3a59ebae4d84615}

Construct a new string [Value](#classcolonio_1_1Value) object.

The char array is converted using the std::string constructor, so up to the first `\0` is used to create a [Value](#classcolonio_1_1Value) object.

#### Parameters
* `v` The source value of the object.

### `public  explicit `[`Value`](#classcolonio_1_1Value_1ac917a8642b786fdf7d92fa2f7526000e)`(const std::string & v)` {#classcolonio_1_1Value_1ac917a8642b786fdf7d92fa2f7526000e}

Construct a new string or byte array [Value](#classcolonio_1_1Value) object.

Even if the std::string object contains '\0', it is simply processed as binary data. The data was transferred to other nodes is also processed as is.

#### Parameters
* `v` The source value of the object.

### `public virtual  `[`~Value`](#classcolonio_1_1Value_1ada8ac5e3c87032d16975d52cd2641814)`()` {#classcolonio_1_1Value_1ada8ac5e3c87032d16975d52cd2641814}

### `public `[`Value`](#classcolonio_1_1Value)` & `[`operator=`](#classcolonio_1_1Value_1a73b88558b3ab55c9555c4ba2f7d35253)`(const `[`Value`](#classcolonio_1_1Value)` & src)` {#classcolonio_1_1Value_1a73b88558b3ab55c9555c4ba2f7d35253}

Copy operation.

#### Parameters
* `src` The copy source object. 

#### Returns
[Value](#classcolonio_1_1Value)&

### `public bool `[`operator<`](#classcolonio_1_1Value_1a7fd077923b0cf7306254d75269ff30c2)`(const `[`Value`](#classcolonio_1_1Value)` & b) const` {#classcolonio_1_1Value_1a7fd077923b0cf7306254d75269ff30c2}

Implementation of comparison operations for std::map and other algorithms.

This comparison operation should not be used as a semantic order in a user program.

#### Parameters
* `b` The object to be compared. 

#### Returns
true 

#### Returns
false

### `public template<>`  <br/>`const T & `[`get`](#classcolonio_1_1Value_1a19c9f47a17504d2229fd20e56035bb16)`() const` {#classcolonio_1_1Value_1a19c9f47a17504d2229fd20e56035bb16}

Extract the actual value from the object.

The value is passed as a reference type, which will be changed by the call to [reset](#classcolonio_1_1Value_1a3c10785cff62a86ac6d2402c4172cfce) and [set](#classcolonio_1_1Value_1a11fbce54ff85b5c0fbc9f782cd3dcc33) method. The value may be changed by the implementation of the module, such as a setter of another node. Also, depending on the implementation of the module, the value may be changed by another node's setter, etc. Do not hold the returned values as reference types or pointers.

#### Parameters
* `T` Native type, which corresponds to the value stored by [Value](#classcolonio_1_1Value) object. 

#### Returns
const T& The value stored by [Value](#classcolonio_1_1Value) object.

### `public template<>`  <br/>`T & `[`get`](#classcolonio_1_1Value_1a1d2d2b8333ddc5cca88255ac8ead65d1)`()` {#classcolonio_1_1Value_1a1d2d2b8333ddc5cca88255ac8ead65d1}

Extract the actual value from the object.

#### Parameters
* `T` Native type, which corresponds to the value stored by [Value](#classcolonio_1_1Value) object. 

#### Returns
const T& The value stored by [Value](#classcolonio_1_1Value) object.

### `public `[`Type`](#classcolonio_1_1Value_1a3906898bf51582a3c6b2c419a2dc5aef)` `[`get_type`](#classcolonio_1_1Value_1ab4d35438fcc79461b56163b121019eea)`() const` {#classcolonio_1_1Value_1ab4d35438fcc79461b56163b121019eea}

Get the type stored by [Value](#classcolonio_1_1Value) object.

#### Returns
Type The type stored by [Value](#classcolonio_1_1Value) object.

### `public void `[`reset`](#classcolonio_1_1Value_1a3c10785cff62a86ac6d2402c4172cfce)`()` {#classcolonio_1_1Value_1a3c10785cff62a86ac6d2402c4172cfce}

Reset the value stored by [Value](#classcolonio_1_1Value) to null.

### `public void `[`set`](#classcolonio_1_1Value_1a11fbce54ff85b5c0fbc9f782cd3dcc33)`(bool v)` {#classcolonio_1_1Value_1a11fbce54ff85b5c0fbc9f782cd3dcc33}

Set a new boolean value for [Value](#classcolonio_1_1Value) object.

#### Parameters
* `v` The source value of the object.

### `public void `[`set`](#classcolonio_1_1Value_1a59dfb7e48832839356c77cc3fc06b9b5)`(int64_t v)` {#classcolonio_1_1Value_1a59dfb7e48832839356c77cc3fc06b9b5}

Set a new integer value for [Value](#classcolonio_1_1Value) object.

#### Parameters
* `v` The source value of the object.

### `public void `[`set`](#classcolonio_1_1Value_1a4e81ea03ed4e43c2d0f298e40717baf3)`(double v)` {#classcolonio_1_1Value_1a4e81ea03ed4e43c2d0f298e40717baf3}

Set a new float number value for [Value](#classcolonio_1_1Value) object.

#### Parameters
* `v` The source value of the object.

### `public void `[`set`](#classcolonio_1_1Value_1aab8d7a46c3c4f73450a6c37b387191d8)`(const std::string & v)` {#classcolonio_1_1Value_1aab8d7a46c3c4f73450a6c37b387191d8}

Set a new string or byte array for [Value](#classcolonio_1_1Value) object.

#### Parameters
* `v` The source value of the object.

### `enum `[`Type`](#classcolonio_1_1Value_1a3906898bf51582a3c6b2c419a2dc5aef) {#classcolonio_1_1Value_1a3906898bf51582a3c6b2c419a2dc5aef}

 Values                         | Descriptions                                
--------------------------------|---------------------------------------------
NULL_T            | null
BOOL_T            | boolean
INT_T            | integer
DOUBLE_T            | float number
STRING_T            | string or byte array

It represents the type that the [Value](#classcolonio_1_1Value) has.

# namespace `colonio::DebugEvent` {#namespacecolonio_1_1DebugEvent}

[DebugEvent](#namespacecolonio_1_1DebugEvent) is going to be removed and is deprecated.

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`enum `[`Type`](#namespacecolonio_1_1DebugEvent_1a4be2f424fd8f2b0d890bd3e8da373a59)            | 

## Members

### `enum `[`Type`](#namespacecolonio_1_1DebugEvent_1a4be2f424fd8f2b0d890bd3e8da373a59) {#namespacecolonio_1_1DebugEvent_1a4be2f424fd8f2b0d890bd3e8da373a59}

 Values                         | Descriptions                                
--------------------------------|---------------------------------------------
MAP_SET            | 
LINKS            | 
NEXTS            | 
POSITION            | 
REQUIRED_1D            | 
REQUIRED_2D            | 
KNOWN_1D            | 
KNOWN_2D            | 

Generated by [Moxygen](https://sourcey.com/moxygen)