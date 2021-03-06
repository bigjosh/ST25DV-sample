//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Type3CommandInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComStSt25sdkCommandType3CommandInterface")
#ifdef RESTRICT_ComStSt25sdkCommandType3CommandInterface
#define INCLUDE_ALL_ComStSt25sdkCommandType3CommandInterface 0
#else
#define INCLUDE_ALL_ComStSt25sdkCommandType3CommandInterface 1
#endif
#undef RESTRICT_ComStSt25sdkCommandType3CommandInterface

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComStSt25sdkCommandType3CommandInterface_) && (INCLUDE_ALL_ComStSt25sdkCommandType3CommandInterface || defined(INCLUDE_ComStSt25sdkCommandType3CommandInterface))
#define ComStSt25sdkCommandType3CommandInterface_

@class IOSByteArray;
@class IOSIntArray;

@protocol ComStSt25sdkCommandType3CommandInterface < JavaObject >

- (IOSByteArray *)sensFWithByteArray:(IOSByteArray *)systemCode
                            withByte:(jbyte)requestCode
                            withByte:(jbyte)timeSlotNumber;

- (IOSByteArray *)checkWithByteArray:(IOSByteArray *)nfcId2
                        withIntArray:(IOSIntArray *)serviceCodeList
                        withIntArray:(IOSIntArray *)blockList;

- (IOSByteArray *)updateWithByteArray:(IOSByteArray *)nfcId2
                         withIntArray:(IOSIntArray *)serviceCodeList
                         withIntArray:(IOSIntArray *)blockList
                        withByteArray:(IOSByteArray *)blockData;

@end

J2OBJC_EMPTY_STATIC_INIT(ComStSt25sdkCommandType3CommandInterface)

J2OBJC_TYPE_LITERAL_HEADER(ComStSt25sdkCommandType3CommandInterface)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComStSt25sdkCommandType3CommandInterface")
