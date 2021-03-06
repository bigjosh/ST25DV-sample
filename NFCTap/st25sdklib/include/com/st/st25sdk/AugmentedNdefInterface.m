//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: st25sdk_ios/AugmentedNdefInterface.java
//

#include "J2ObjC_source.h"
#include "com/st/st25sdk/AugmentedNdefInterface.h"

@interface ComStSt25sdkAugmentedNdefInterface : NSObject

@end

@implementation ComStSt25sdkAugmentedNdefInterface

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 1, 2, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, 0, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 2, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 7, 0, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 2, 0, -1, -1, -1 },
    { NULL, "V", 0x401, 9, 10, 0, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(isAndefEnabled);
  methods[1].selector = @selector(enableAndefWithBoolean:);
  methods[2].selector = @selector(writeAndefUriWithComStSt25sdkNdefUriRecord:);
  methods[3].selector = @selector(getAndefString);
  methods[4].selector = @selector(isAndefSeparatorEnabled);
  methods[5].selector = @selector(enableAndefSeparatorWithBoolean:);
  methods[6].selector = @selector(setAndefSeparatorWithNSString:);
  methods[7].selector = @selector(getAndefSeparator);
  methods[8].selector = @selector(isAndefUidEnabled);
  methods[9].selector = @selector(enableAndefUidWithBoolean:);
  methods[10].selector = @selector(setAndefStartAddressInBytesWithInt:);
  methods[11].selector = @selector(getAndefStartAddressInBytes);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComStSt25sdkSTException;", "enableAndef", "Z", "writeAndefUri", "LComStSt25sdkNdefUriRecord;", "enableAndefSeparator", "setAndefSeparator", "LNSString;", "enableAndefUid", "setAndefStartAddressInBytes", "I" };
  static const J2ObjcClassInfo _ComStSt25sdkAugmentedNdefInterface = { "AugmentedNdefInterface", "com.st.st25sdk", ptrTable, methods, NULL, 7, 0x609, 12, 0, -1, -1, -1, -1, -1 };
  return &_ComStSt25sdkAugmentedNdefInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComStSt25sdkAugmentedNdefInterface)
