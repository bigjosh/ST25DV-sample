//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/command/Type4CommandInterface.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/command/Type4CommandInterface.h"

@interface ComStSt25sdkCommandType4CommandInterface : NSObject

@end

@implementation ComStSt25sdkCommandType4CommandInterface

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[B", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "[B", 0x401, 3, 4, 2, -1, -1, -1 },
    { NULL, "[B", 0x401, 5, 6, 2, -1, -1, -1 },
    { NULL, "[B", 0x401, 7, 4, 2, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(selectFileWithInt:);
  methods[1].selector = @selector(selectWithByte:withByte:withByteArray:);
  methods[2].selector = @selector(readBinaryWithByte:withByte:withByte:);
  methods[3].selector = @selector(updateBinaryWithByte:withByte:withByteArray:);
  methods[4].selector = @selector(selectNdefTagApplication);
  methods[5].selector = @selector(selectNdefTagApplicationMappingVersion2);
  methods[6].selector = @selector(selectNdefTagApplicationMappingVersion1);
  methods[7].selector = @selector(selectNdefTagApplicationSequence);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "selectFile", "I", "LComStSt25sdkSTException;", "select", "BB[B", "readBinary", "BBB", "updateBinary" };
  static const J2ObjcClassInfo _ComStSt25sdkCommandType4CommandInterface = { "Type4CommandInterface", "com.st.st25sdk.command", ptrTable, methods, NULL, 7, 0x609, 8, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkCommandType4CommandInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComStSt25sdkCommandType4CommandInterface)
