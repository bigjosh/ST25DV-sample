//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/MultiAreaInterface.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/MultiAreaInterface.h"

@implementation ComStSt25sdkMultiAreaInterface

+ (jint)AREA1 {
  return ComStSt25sdkMultiAreaInterface_AREA1;
}

+ (jint)AREA2 {
  return ComStSt25sdkMultiAreaInterface_AREA2;
}

+ (jint)AREA3 {
  return ComStSt25sdkMultiAreaInterface_AREA3;
}

+ (jint)AREA4 {
  return ComStSt25sdkMultiAreaInterface_AREA4;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 1, 2, 0, -1, -1, -1 },
    { NULL, "I", 0x401, 3, 2, 0, -1, -1, -1 },
    { NULL, "I", 0x401, 4, 2, 0, -1, -1, -1 },
    { NULL, "I", 0x401, 5, 2, 0, -1, -1, -1 },
    { NULL, "I", 0x401, 6, 2, 0, -1, -1, -1 },
    { NULL, "I", 0x401, 7, 2, 0, -1, -1, -1 },
    { NULL, "LComStSt25sdkNdefNDEFMsg;", 0x401, 8, 2, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 9, 10, 0, -1, -1, -1 },
    { NULL, "LComStSt25sdkTagHelper_ReadWriteProtection;", 0x401, 11, 2, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 12, 13, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 12, 14, 0, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, 15, 2, 0, 16, -1, -1 },
    { NULL, "I", 0x401, 17, 2, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getMaxNumberOfAreas);
  methods[1].selector = @selector(getNumberOfAreas);
  methods[2].selector = @selector(setNumberOfAreasWithInt:);
  methods[3].selector = @selector(getAreaSizeInBytesWithInt:);
  methods[4].selector = @selector(getAreaOffsetInBytesWithInt:);
  methods[5].selector = @selector(getAreaOffsetInBlocksWithInt:);
  methods[6].selector = @selector(getAreaFromBlockAddressWithInt:);
  methods[7].selector = @selector(getAreaFromByteAddressWithInt:);
  methods[8].selector = @selector(readNdefMessageWithInt:);
  methods[9].selector = @selector(writeNdefMessageWithInt:withComStSt25sdkNdefNDEFMsg:);
  methods[10].selector = @selector(getReadWriteProtectionWithInt:);
  methods[11].selector = @selector(setReadWriteProtectionWithInt:withComStSt25sdkTagHelper_ReadWriteProtection:);
  methods[12].selector = @selector(setReadWriteProtectionWithInt:withComStSt25sdkTagHelper_ReadWriteProtection:withByteArray:);
  methods[13].selector = @selector(getPossibleReadWriteProtectionWithInt:);
  methods[14].selector = @selector(getAreaPasswordLengthWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "AREA1", "I", .constantValue.asInt = ComStSt25sdkMultiAreaInterface_AREA1, 0x19, -1, -1, -1, -1 },
    { "AREA2", "I", .constantValue.asInt = ComStSt25sdkMultiAreaInterface_AREA2, 0x19, -1, -1, -1, -1 },
    { "AREA3", "I", .constantValue.asInt = ComStSt25sdkMultiAreaInterface_AREA3, 0x19, -1, -1, -1, -1 },
    { "AREA4", "I", .constantValue.asInt = ComStSt25sdkMultiAreaInterface_AREA4, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LComStSt25sdkSTException;", "setNumberOfAreas", "I", "getAreaSizeInBytes", "getAreaOffsetInBytes", "getAreaOffsetInBlocks", "getAreaFromBlockAddress", "getAreaFromByteAddress", "readNdefMessage", "writeNdefMessage", "ILComStSt25sdkNdefNDEFMsg;", "getReadWriteProtection", "setReadWriteProtection", "ILComStSt25sdkTagHelper_ReadWriteProtection;", "ILComStSt25sdkTagHelper_ReadWriteProtection;[B", "getPossibleReadWriteProtection", "(I)Ljava/util/List<Lcom/st/st25sdk/TagHelper$ReadWriteProtection;>;", "getAreaPasswordLength" };
  static const J2ObjcClassInfo _ComStSt25sdkMultiAreaInterface = { "MultiAreaInterface", "com.st.st25sdk", ptrTable, methods, fields, 7, 0x609, 15, 4, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkMultiAreaInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComStSt25sdkMultiAreaInterface)
