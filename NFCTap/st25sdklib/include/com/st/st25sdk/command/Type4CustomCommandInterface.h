//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Type4CustomCommandInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkCommandType4CustomCommandInterface")
#ifdef RESTRICT_ComStSt25sdkCommandType4CustomCommandInterface
#define INCLUDE_ALL_ComStSt25sdkCommandType4CustomCommandInterface 0
#else
#define INCLUDE_ALL_ComStSt25sdkCommandType4CustomCommandInterface 1
#endif
#undef RESTRICT_ComStSt25sdkCommandType4CustomCommandInterface

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkCommandType4CustomCommandInterface_) && (INCLUDE_ALL_ComStSt25sdkCommandType4CustomCommandInterface || defined(INCLUDE_ComStSt25sdkCommandType4CustomCommandInterface))
#define ComStSt25sdkCommandType4CustomCommandInterface_

@class IOSByteArray;

@protocol ComStSt25sdkCommandType4CustomCommandInterface < JavaObject >

- (IOSByteArray *)extendedReadBinaryWithByte:(jbyte)p1
                                    withByte:(jbyte)p2
                                    withByte:(jbyte)length;

- (IOSByteArray *)updateFileTypeWithByte:(jbyte)data;

- (IOSByteArray *)sendInterrupt;

- (IOSByteArray *)setStateControlWithByte:(jbyte)data;

- (IOSByteArray *)setConfigCounterWithByte:(jbyte)counterConfigurationValue;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkCommandType4CustomCommandInterface)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCommandType4CustomCommandInterface)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkCommandType4CustomCommandInterface")
